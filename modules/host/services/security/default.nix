{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    security.rtkit.enable = true;
}
