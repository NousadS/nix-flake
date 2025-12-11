{
    config,
    lib,
    pkgs,
    stylix,
    ...
}: {
    fonts.packages = [
        pkgs.fira-code
        pkgs.fira-mono
        pkgs.fira-sans
        pkgs.meslo-lgs-nf
        pkgs.noto-fonts-color-emoji
    ];

    stylix.fonts = {
        serif = {
            package = pkgs.fira-code;
            name = "Fira Code Regular";
        };

        sansSerif = {
            package = pkgs.fira-code;
            name = "Fira Code Regular";
        };

        monospace = {
            package = pkgs.meslo-lgs-nf;
            name = "MesloLGS NF";
        };

        emoji = {
            package = pkgs.noto-fonts-color-emoji;
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
