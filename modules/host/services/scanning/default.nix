{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    hardware.sane.enable = true;
    hardware.sane.extraBackends = [
        pkgs.sane-backends
    ];

    environment.systemPackages = [
        pkgs.simple-scan
    ];
}
