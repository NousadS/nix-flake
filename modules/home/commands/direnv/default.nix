{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    programs.direnv = {
  enable = true;
  nix-direnv.enable = true;
};
}
