{
  config,
  lib,
  pkgs,
  mkModule,
  ...
}@args:
mkModule {
  home.packages = [
    pkgs.jetbrains.idea-community
    # pkgs.jetbrains.jdk
  ];
}
