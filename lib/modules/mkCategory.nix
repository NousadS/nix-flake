{
    config,
    lib,
    pkgs,
    path,
    category,
    ...
} @ args: let
    dir = builtins.readDir path;

    isGroup = g: dir.${g} == "directory";
    mkGroup = g: let
        groupPath = path + "/${g}";
        groupDir = builtins.readDir groupPath;

        isModule = (m: import ./isModule.nix {path = groupPath; name = m;});
        mkModule = (m: import ./mkModule.nix args {
            path = groupPath;
                inherit category;
            group = g;
            name = m;
        });
    in
        map mkModule (builtins.filter isModule (builtins.attrNames groupDir));

    groups = builtins.concatMap mkGroup (builtins.filter isGroup (builtins.attrNames dir));
in
    groups
