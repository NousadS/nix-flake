{ config, stylix, lib, pkgs, ... }:

{
    stylix.enable = true;

    stylix.image = ../../wallpapers/venator-left.png;

    # BASE: ${pkgs.base16-schemes}/share/themes/eris.yaml
    stylix.polarity = "dark";
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
