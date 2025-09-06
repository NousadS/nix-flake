{ config, lib, pkgs, stylix, ... }:

{
    environment.systemPackages = [
        pkgs.gtk3
        pkgs.xclip
    ];

    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
}

