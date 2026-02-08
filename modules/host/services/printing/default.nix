{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    services.printing.enable = true;

    services.printing.drivers = [
        pkgs.gutenprint
        pkgs.cnijfilter2
    ];

    environment.systemPackages = [
        pkgs.cups-printers
    ];
}
