{
    config,
    lib,
    pkgs,
    ...
}: {
    dconf.settings = {
        "org/gnome/desktop/interface" = {
            accent-color = "slate";
            # color-scheme = "prefer-dark";

            enable-animations = true;
            # cursor-size = lib.gvariant.mkInt32 1;

            # cursor-theme = "Bibata-Modern-Classic";
            # icon-theme = "Papirus-Dark";
            gtk-theme = "adw-gtk3";

            # document-font-name = "Fira Code Regular  10";
            # font-name = "Fira Code Regular 11";
            # monospace-font-name = "MesloLGS NF 11";
        };
    };
}
