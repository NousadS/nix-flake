{ config, stylix, lib, pkgs, ... }:

{
    stylix.enable = true;

    stylix.targets = {
        ghostty.enable = true;
    };

    stylix.image = ../../wallpapers/venator-left.png;

    # stylix.base16Scheme = ../homes/nousad/configs/stylix/scheme.yaml
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/equilibrium-dark.yaml";
    stylix.polarity = "dark";

    fonts.packages = [
        pkgs.fira-code
        pkgs.fira-mono
        pkgs.fira-sans
        pkgs.fira-code-symbols
        pkgs.meslo-lgs-nf
        pkgs.noto-fonts-emoji
    ];

    stylix.fonts = {
        serif = {
            package = pkgs.fira-sans;
            name = "Fira Sans Regular";
        };

        sansSerif = {
            package = pkgs.fira-sans;
            name = "Fira Sans Regular";
        };

        monospace = {
            package = pkgs.fira-code;
            name = "Fira Code Regular";
        };

        emoji = {
            package = pkgs.noto-fonts-emoji;
            name = "Noto Color Emoji";
        };
    };
}
