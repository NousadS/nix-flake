{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    home.packages = [
        pkgs.android-tools
        pkgs.android-studio
    ];
}
