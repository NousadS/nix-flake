{
  config,
  lib,
  pkgs,
  mkModule,
  ...
}@args:
mkModule {
  home.packages = [
    pkgs.nixfmt-rfc-style
  ];
}
