{
    config,
    lib,
    pkgs,
    inputs,
    mkModule,
    ...
} @ args:
mkModule {
    options = {
        theme = lib.mkOption {
            type = lib.types.nullOr lib.types.path;
            default = null;
            description = "path to theme";
        };

        wallpaper = lib.mkOption {
            type = lib.types.nullOr lib.types.path;
            default = null;
            description = "relative path to wallpaper";
        };
    };

    imports = [
        inputs.stylix.nixosModules.stylix

        ./colors.nix
        ./fonts.nix
        ./theme.nix
    ];
}
