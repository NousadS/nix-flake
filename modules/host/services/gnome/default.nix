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

    services.xserver.desktopManager.gnome.enable = true;
}
