{
    config,
    lib,
    pkgs,
    ...
}: {
    dconf.settings = {
        "org/gnome/desktop/wm/keybindings" = {
            begin-move = [];
            begin-resize = [];
            cycle-group = [];
            cycle-group-backward = [];
            cycle-panels = [];
            cycle-panels-backward = [];
            cycle-windows = ["<Alt>grave"];
            cycle-windows-backward = ["<Shift><Alt>grave"];
            maximize = [];
            maximize-horizontally = ["<Shift>F12"];
            maximize-vertically = ["<Control>F12"];
            minimize = [];
            move-to-monitor-down = [];
            move-to-monitor-left = [];
            move-to-monitor-right = [];
            move-to-monitor-up = [];
            move-to-workspace-1 = [];
            move-to-workspace-last = [];
            move-to-workspace-left = [];
            move-to-workspace-right = [];
            panel-run-dialog = [];
            switch-applications = [];
            switch-applications-backward = [];
            switch-group = [];
            switch-group-backward = [];
            switch-input-source = ["<Super>space"];
            switch-input-source-backward = ["<Shift><Super>space"];
            switch-panels = [];
            switch-panels-backward = [];
            switch-to-workspace-1 = [];
            switch-to-workspace-last = [];
            switch-to-workspace-left = ["<Control><Super>Left"];
            switch-to-workspace-right = ["<Control><Super>Right"];
            switch-windows = ["<Alt>Tab"];
            switch-windows-backward = ["<Shift><Alt>Tab"];
            toggle-maximized = ["F12"];
            unmaximize = [];
        };

        "org/gnome/shell/keybindings" = {
            focus-active-notification = [];
            screenshot = [];
            screenshot-window = [];
            show-screen-recording-ui = ["<Shift><Control>r"];
            show-screenshot-ui = ["<Shift><Control>s"];
            toggle-application-view = [];
            toggle-message-tray = [];
            toggle-quick-settings = [];
        };

        "org/gnome/settings-daemon/plugins/media-keys" = {
            control-center = ["<Super>s"];
            custom-keybindings = [
                "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
                "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
                "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
                "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/"
            ];
            help = [];
            logout = [];
            magnifier = ["<Alt>z"];
            magnifier-zoom-in = ["<Shift><Alt>plus"];
            magnifier-zoom-out = ["<Shift><Alt>minus"];
            mic-mute = ["<Control>Escape"];
            next = ["AudioNext"];
            play = ["AudioPlay"];
            previous = ["AudioPrev"];
            screenreader = [];
            search = ["<Super>a"];
            volume-down = ["AudioLowerVolume"];
            volume-mute = ["AudioMute"];
            volume-up = ["AudioRaiseVolume"];
        };

        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
            binding = "<Shift><Control><Super>v";
            command = "code";
            name = "Solaar - Editor";
        };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
            binding = "<Shift><Control><Super>r";
            command = "ghostty";
            name = "Solaar - Terminal";
        };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
            binding = "<Shift><Control><Super>b";
            command = "google-chrome-stable";
            name = "Solaar - Browser";
        };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
            binding = "<Shift><Control><Super>g";
            command = "prismlauncher";
            name = "Solaar - Game";
        };
    };
}
