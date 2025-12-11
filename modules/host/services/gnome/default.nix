{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        pkgs.gtk3
        pkgs.xclip
    ];

    services.desktopManager.gnome.enable = true;
}
