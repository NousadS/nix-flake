{ config, lib, pkgs, mkModule, stylix, ... }:

mkModule {
    name = "colors.default";
    body = {
        stylix.polarity = "dark";

        # wallpaper: wallpapers/nix-gnome.png
        # stylix.base16Scheme = {
        #     base00 = "#111a2d";
        #     base01 = "#2c467b";
        #     base02 = "#4869b0";
        #     base03 = "#70a6cd";
        #     base04 = "#7ebae4";
        #     base05 = "#7ebae4";
        #     base06 = "#7eb9e3";
        #     base07 = "#7ebae4";
        #     base08 = "#6796bc";
        #     base09 = "#6797be";
        #     base0A = "#73a5da";
        #     base0B = "#679bc1";
        #     base0C = "#6796bc";
        #     base0D = "#6c9bcd";
        #     base0E = "#6a9ac0";
        #     base0F = "#6795bb";
        #
        #     author = "nousad";
        #     scheme = "nousad-nix-gnome";
        # }

        # ${pkgs.base16-schemes}/share/themes/eris.yaml
        stylix.base16Scheme = {
            base00 = "#0a0920";
            base01 = "#13133a";
            base02 = "#23255a";
            base03 = "#333773";
            base04 = "#4a5293";
            base05 = "#606bac";
            base06 = "#7986c5";
            base07 = "#9aaae5";
            base08 = "#f768a3";
            base09 = "#f768a3";
            base0A = "#faaea2";
            base0B = "#faaea2";
            base0C = "#258fc4";
            base0D = "#258fc4";
            base0E = "#f768a3";
            base0F = "#f768a3";
        };
    };
}

