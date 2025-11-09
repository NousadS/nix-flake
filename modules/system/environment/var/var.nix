# Management of static files in /var.
{
    config,
    lib,
    pkgs,
    ...
}: let
    var' = lib.filter (f: f.enable) (lib.attrValues config.environment.var);

    var = pkgs.runCommandLocal "var"
    {
        # This is needed for the systemd module
        passthru.targets = map (x: x.target) var';
    } # sh
    
    ''
        set -euo pipefail

        makeVarEntry() {
            src="$1"
            target="$2"
            mode="$3"
            user="$4"
            group="$5"

            if [[ "$src" = *'*'* ]]; then
                # If the source name contains '*', perform globbing.

                mkdir -p "$out/var/$target"

                for fn in $src; do
                    ln -s "$fn" "$out/var/$target/"
                done
            else
                mkdir -p "$out/var/$(dirname "$target")"

                if ! [ -e "$out/var/$target" ]; then
                    ln -s "$src" "$out/var/$target"
                else
                    echo "duplicate entry $target -> $src"
                    if [ "$(readlink "$out/var/$target")" != "$src" ]; then
                        echo "mismatched duplicate entry $(readlink "$out/var/$target") <-> $src"
                        ret=1
                    fi
                fi

                if [ "$mode" != symlink ]; then
                    echo "$mode" > "$out/var/$target.mode"
                    echo "$user" > "$out/var/$target.uid"
                    echo "$group" > "$out/var/$target.gid"
                fi
            fi
        }

        mkdir -p "$out/var"

        ${lib.concatMapStringsSep "\n" (
            varEntry:
                lib.escapeShellArgs [
                    "makeVarEntry"
                    # Force local source paths to be added to the store
                    "${varEntry.source}"
                    varEntry.target
                    varEntry.mode
                    varEntry.user
                    varEntry.group
                ]
        )
        var'}
    '';

    varHardlinks = lib.filter (f: f.mode != "symlink" && f.mode != "direct-symlink") var';
in {
    ###### interface

    options = {
        environment.var = lib.mkOption {
            default = {};
            example = lib.literalExpression ''
                { example-configuration-file =
                    { source = "/nix/store/.../var/dir/file.conf.example";
                      mode = "0440";
                    };
                  "default/useradd".text = "GROUP=100 ...";
                }
            '';
            description = ''
                Set of files that have to be linked in {file}`/var`.
            '';

            type = with lib.types;
                attrsOf (
                    submodule (
                        {
                            name,
                            config,
                            options,
                            ...
                        }: {
                            options = {
                                enable = lib.mkOption {
                                    type = lib.types.bool;
                                    default = true;
                                    description = ''
                                        Whether this /var file should be generated.  This
                                        option allows specific /var files to be disabled.
                                    '';
                                };

                                target = lib.mkOption {
                                    type = lib.types.str;
                                    description = ''
                                        Name of symlink (relative to
                                        {file}`/var`).  Defaults to the attribute
                                        name.
                                    '';
                                };

                                text = lib.mkOption {
                                    default = null;
                                    type = lib.types.nullOr lib.types.lines;
                                    description = "Text of the file.";
                                };

                                source = lib.mkOption {
                                    type = lib.types.path;
                                    description = "Path of the source file.";
                                };

                                mode = lib.mkOption {
                                    type = lib.types.str;
                                    default = "symlink";
                                    example = "0600";
                                    description = ''
                                        If set to something else than `symlink`,
                                        the file is copied instead of symlinked, with the given
                                        file mode.
                                    '';
                                };

                                uid = lib.mkOption {
                                    default = 0;
                                    type = lib.types.int;
                                    description = ''
                                        UID of created file. Only takes effect when the file is
                                        copied (that is, the mode is not 'symlink').
                                    '';
                                };

                                gid = lib.mkOption {
                                    default = 0;
                                    type = lib.types.int;
                                    description = ''
                                        GID of created file. Only takes effect when the file is
                                        copied (that is, the mode is not 'symlink').
                                    '';
                                };

                                user = lib.mkOption {
                                    default = "+${toString config.uid}";
                                    type = lib.types.str;
                                    description = ''
                                        User name of file owner.

                                        Only takes effect when the file is copied (that is, the
                                        mode is not `symlink`).

                                        When `services.userborn.enable`, this option has no effect.
                                        You have to assign a `uid` instead. Otherwise this option
                                        takes precedence over `uid`.
                                    '';
                                };

                                group = lib.mkOption {
                                    default = "+${toString config.gid}";
                                    type = lib.types.str;
                                    description = ''
                                        Group name of file owner.

                                        Only takes effect when the file is copied (that is, the
                                        mode is not `symlink`).

                                        When `services.userborn.enable`, this option has no effect.
                                        You have to assign a `gid` instead. Otherwise this option
                                        takes precedence over `gid`.
                                    '';
                                };
                            };

                            config = {
                                target = lib.mkDefault name;
                                source = lib.mkIf (config.text != null) (
                                    let
                                        name' = "var-" + lib.replaceStrings ["/"] ["-"] name;
                                    in
                                        lib.mkDerivedConfig options.text (pkgs.writeText name')
                                );
                            };
                        }
                    )
                );
        };
    };

    ###### implementation

    config = {
        system.build.var = var;
        system.build.varActivationCommands = ''
            mkdir -p /var
            cp -a ${var}/var/* /var/
        '';
    };
}
