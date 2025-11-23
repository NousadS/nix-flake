{
    config,
    lib,
    pkgs,
    stylix,
    self,
    cfg,
    ...
}: {
    # cfg.wallpaper = self + "/assets/wallpapers/Windows.jpg";

    # stylix.image = builtins.trace "" (
    #     if cfg.wallpaper == null
    #     then self + "/assets/wallpapers/Linux.jpg"
    #     else cfg.wallpaper
    # );

    stylix.image = self + "/assets/wallpapers/Linux.jpg";

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
