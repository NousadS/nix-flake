{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    services.xserver.enable = true;

    services.xserver.synaptics = {
        enable = true;
    };
}
