{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        open-bar
    ];

    dconf.settings = {
        "org/gnome/shell".disabled-extensions = [
            "openbar@neuromorph"
        ];
    };
}

