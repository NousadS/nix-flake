{ config, stylix, lib, pkgs, ... }:

{
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

        sizes = {
            applications = 11;
            desktop = 11;
            popups = 11;
            terminal = 11;
        };
    };
}
