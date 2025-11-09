{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    ...
} @ args:
mkModule {
    imports = [
        ./custom-keybinds.nix
        ./files.nix
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

    dconf.enable = true;

    dconf.settings = {
        "org/gnome/shell/extensions/blur-my-shell" = {
            blacklist = "@as []";
            blur = true;
            blur-on-overview = false;
            brightness = "1.0";
            customize = true;
            enable-all = true;
            opacity = "250";
            settings-version = 2;
            sigma = "59";

            # appfolder = {
            #     brightness = 0.6;
            #     sigma = 30;
            # };

            # coverflow-alt-tab = {
            #     pipeline="pipeline_default";
            # };

            # dash-to-dock = {
            #     blur = true;
            #     brightness = 0.6;
            #     override-background = false;
            #     pipeline = "pipeline_default_rounded";
            #     sigma = 30;
            #     static-blur = true;
            #     style-dash-to-dock = 0;
            #     unblur-in-overview = false;
            # };

            # hidetopbar = {
            #     compatibility = false;
            # };

            # lockscreen = {
            #     pipeline = "pipeline_default";
            # };

            # overview = {
            #     pipeline = "pipeline_default";
            #     style-components = 2;
            # };

            # panel = {
            #     brightness = 0.6;
            #     pipeline = "pipeline_default";
            #     sigma = 30;
            #     static-blur = true;
            # };

            # screenshot = {
            #     pipeline = "pipeline_default";
            # };

            # window-list = {
            #     brightness = 0.6;
            #     sigma = 30;
            # };
        };

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

        "org/gnome/shell/extensions/just-perfection" = {
            accent-color-icon = true;
            accessibility-menu = false;
            activities-button = true;
            animation = 5;
            clock-menu = true;
            clock-menu-position-offset = 0;
            events-button = false;
            keyboard-layout = true;
            max-displayed-search-results = 40;
            panel = true;
            panel-size = 0;
            quick-settings = true;
            quick-settings-airplane-mode = true;
            quick-settings-dark-mode = false;
            quick-settings-night-light = false;
            search = false;
            support-notifier-showed-version = 34;
            support-notifier-type = 0;
            theme = false;
            weather = false;
            workspace-switcher-size = 0;
        };

        "org/gnome/shell/extensions/pip-on-top" = {
            stick = false;
        };
    };
}
