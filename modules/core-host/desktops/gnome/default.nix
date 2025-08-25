{ config, lib, pkgs, stylix, ... }:

{
    environment.systemPackages = [
        pkgs.gtk3
    ];

    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;
}

