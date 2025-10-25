{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    services.xserver.xkb = {
        layout = "us,ru";
        variant = "";
        options = "grp:win_space_toggle";
    };
}
