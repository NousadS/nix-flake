{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        pkgs.android-tools
        pkgs.android-studio
    ];
}
