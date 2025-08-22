{ config, lib, pkgs, mkModule, stylix, ... }:

mkModule {
    group = "desktops";
    name = "gnome";
    body = {
        environment.systemPackages = [
            pkgs.gtk3
        ];

        services.xserver.displayManager.gdm.enable = true;
        services.xserver.desktopManager.gnome.enable = true;

        stylix.enable = true;
    };
}

