{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    options = {
        modules.host.themes.default.theme = lib.mkOption {
            type = lib.types.nullOr lib.types.path;
            default = null;
            description = "path to theme";
        };

        modules.host.themes.default.wallpaper = lib.mkOption {
            type = lib.types.nullOr lib.types.path;
            default = null;
            description = "relative path to wallpaper";
        };
    };

    imports = [
        ./colors.nix
        ./fonts.nix
        ./grub.nix
        ./theme.nix
    ];
}

