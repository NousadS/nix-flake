{ config, lib, pkgs, stylix, self, ... }:

{
    # stylix.image = 
    #     if config.modules.host.themes.default.wallpaper == null
    #     then self + "/assets/wallpapers/nix-gnome.png"
    #     else self + "/assets/wallpapers/" + config.modules.host.themes.default.wallpaper;

    stylix.image = self + "/assets/wallpapers/ThonkPad.jpg";

    environment.systemPackages = [
        pkgs.papirus-icon-theme
    ];

    stylix.cursor = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Classic";
        size = 1;
    };

    stylix.icons = {
        enable = true;

        package = pkgs.papirus-icon-theme;
        light = "Papirus-Light";
        dark = "Papirus-Dark";
    };

    stylix.opacity = {
        applications = 1.0;
        desktop = 1.0;
        popups = 1.0;
        terminal = 1.0;
    };
}

