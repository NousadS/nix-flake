{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        pkgs.wine
        pkgs.winetricks
        pkgs.wineWowPackages.waylandFull
    ];
}
