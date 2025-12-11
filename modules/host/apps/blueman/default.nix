{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    services.blueman.enable = true;
}
