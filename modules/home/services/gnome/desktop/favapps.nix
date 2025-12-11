{
    config,
    lib,
    pkgs,
    ...
}: {
    dconf.settings = {
        "org/gnome/shell" = {
            favorite-apps = [
                "google-chrome.desktop"
                "org.gnome.Nautilus.desktop"
                "code.desktop"
            ];
        };
    };
}
