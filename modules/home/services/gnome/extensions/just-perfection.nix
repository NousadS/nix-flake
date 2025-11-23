{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        just-perfection
    ];

    dconf.settings = {
        "org/gnome/shell".disabled-extensions = [
            "just-perfection-desktop@just-perfection"
        ];

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
    };
}
