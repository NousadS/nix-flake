{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        gsconnect
    ];

    dconf.settings = {
        "org/gnome/shell".disabled-extensions = [
            "gsconnect@andyholmes.github.io"
        ];
    };
}