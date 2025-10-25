{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    services.printing.enable = true;

    services.printing.drivers = [ 
        pkgs.gutenprint
        pkgs.cnijfilter2 
    ];

    hardware.sane.enable = true;
    hardware.sane.extraBackends = [
        pkgs.sane-backends
    ];

    environment.systemPackages = [
        pkgs.cups-printers
        pkgs.simple-scan
    ];
}
