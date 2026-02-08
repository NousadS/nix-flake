{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    services.displayManager.gdm = {
        enable = true;
        banner = "Nousad's NixOS ❄️";
    };

    programs.dconf.profiles."gdm".databases = [
        {
            settings = {
                "org/gnome/desktop/background" = {
                    picture-uri = "${config.stylix.image}";
                    picture-uri-dark = "${config.stylix.image}";
                };
                "org/gnome/desktop/screensaver" = {
                    picture-uri = "${config.stylix.image}";
                };
                "org/gnome/desktop/interface" = {
                    accent-color = "slate";
                    color-scheme = "prefer-dark";

                    enable-animations = true;
                    cursor-size = lib.gvariant.mkInt32 1;

                    cursor-theme = "Bibata-Modern-Classic";
                    icon-theme = "Papirus-Dark";
                    gtk-theme = "adw-gtk3";

                    document-font-name = "Fira Code Regular 10";
                    font-name = "Fira Code Regular 11";
                    monospace-font-name = "MesloLGS NF 11";
                };
            };
        }
    ];
}
