{
    config,
    lib,
    pkgs,
    ...
}: {
    imports = [
    ];

    home.packages = with pkgs.gnomeExtensions; [
        user-themes
        solaar-extension

        blur-my-shell
        just-perfection
        open-bar
        dash-to-dock
        vitals
        gsconnect
        pip-on-top
        color-picker
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "dash-to-dock@micxgx.gmail.com"
        ];

        "org/gnome/shell/extensions/dash-to-dock" = {
            apply-custom-theme = false;
            autohide-in-fullscreen = true;
            background-opacity = 0.0;
            custom-background-color = false;
            custom-theme-shrink = false;
            customize-alphas = true;
            dance-urgent-applications = true;
            dash-max-icon-size = 55;
            dock-position = "BOTTOM";
            extend-height = false;
            height-fraction = 0.8;
            hide-tooltip = true;
            icon-size-fixed = true;
            intellihide-mode = "ALL_WINDOWS";
            max-alpha = 0.8;
            multi-monitor = true;
            preferred-monitor = -2;
            preferred-monitor-by-connector = "LVDS-1";
            preview-size-scale = 0.0;
            running-indicator-style = "DEFAULT";
            scroll-action = "cycle-windows";
            show-apps-at-top = false;
            show-icons-emblems = false;
            show-mounts = false;
            show-trash = false;
            transparency-mode = "DYNAMIC";
        };
    };
}
