{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    virtualisation.docker.enable = true;
}
