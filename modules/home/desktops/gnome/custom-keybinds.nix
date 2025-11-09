{
    config,
    lib,
    pkgs,
    ...
}: {
    dconf.settings = {
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
            name = "Solaar - Editor";
            command = "code";
            binding = "<Shift><Control><Super>e";
        };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
            name = "Solaar - Terminal";
            command = "ghostty";
            binding = "<Shift><Control><Super>t";
        };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
            name = "Solaar - Browser";
            command = "google-chrome-stable";
            binding = "<Shift><Control><Super>b";
        };
        "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" = {
            name = "Solaar - Game";
            command = "prismlauncher";
            binding = "<Shift><Control><Super>g";
        };
    };
}
