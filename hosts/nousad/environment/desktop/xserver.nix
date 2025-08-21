{ config, lib, pkgs, ... }:

{
    imports = [
        
    ];

    services.xserver.enable = true;
    
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;


    services.xserver.xkb = {
        layout = "us,ru";
        variant = "";
        options = "grp:win_space_toggle";
    };
}
{ config, lib, pkgs, ... }:

{
    services.xserver.enable = true;
    
    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
}
