{
  config,
  lib,
  pkgs,
  mkModule,
  ...
}:
mkModule { home.packages = [ pkgs.nil ]; }
