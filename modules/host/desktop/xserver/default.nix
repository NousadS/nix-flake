{
  config,
  lib,
  pkgs,
  mkModule,
  ...
}@args:
mkModule {
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "us,ru,de,gr";
    variant = ",,,polytonic";
    options = "grp:win_space_toggle,compose:ralt"; # idk why but ralt sets compose to rctrl
  };
}
