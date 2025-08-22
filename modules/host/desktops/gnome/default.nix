{ config, lib, pkgs, mkModule, stylix, ... }:

mkModule {
    name = "desktops.gnome";
    body = {
        environment.systemPackages = [
            pkgs.gtk3
        ];

        services.xserver.displayManager.gdm.enable = true;
        services.xserver.desktopManager.gnome.enable = true;

        stylix.enable = true;
    };
}

