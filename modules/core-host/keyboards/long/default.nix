{ config, lib, pkgs, ... }:

{
    services.xserver.xkb = {
        layout = "us,ru,de,gr";
        variant = ",,,polytonic";
        options = "grp:win_space_toggle";
    };
}
