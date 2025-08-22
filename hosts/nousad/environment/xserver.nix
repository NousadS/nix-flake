{ config, lib, pkgs, ... }:

{
    services.xserver.enable = true;
    
    services.xserver.xkb = {
        layout = "us,ru,de,gr";
        variant = "";
        options = "grp:win_space_toggle";
    };
}
