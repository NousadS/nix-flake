{ config, lib, pkgs, mkModule, stylix, ... }:

mkModule {
    group = "themes";
    name = "default";
    body = {
        stylix.image = ../../../../wallpapers/nix-gnome.png;

        stylix.cursor = {
            package = pkgs.bibata-cursors;
            name = "Bibata-Modern-Classic";
            size = 1;
        };

        stylix.icons = {
            enable = true;

            package = pkgs.papirus-nord;
            light = "snowstorm1";
            dark = "polarnight3";
        };

        stylix.opacity = {
            applications = 1.0;
            desktop = 1.0;
            popups = 1.0;
            terminal = 1.0;
        };
    };
}

