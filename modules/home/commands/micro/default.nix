{
    config,
    lib,
    pkgs,
    mkModule,
    stylix,
    ...
} @ args:
mkModule {
    stylix.targets.micro.enable = true;

    home.sessionVariables.EDITOR = "micro";
}
