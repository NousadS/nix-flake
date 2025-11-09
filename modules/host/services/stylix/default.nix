{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    stylix.enable = true;
}
