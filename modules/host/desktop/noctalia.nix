{
  config,
  lib,
  pkgs,
  system,
  inputs,
  ...
}:
{
  imports = [
    inputs.noctalia.nixosModules.default
  ];

  services.noctalia-shell = {
    enable = true;
    target = "graphical-session.target";
  };
}
