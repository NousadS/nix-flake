{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        vitals
    ];

    dconf.settings = {
        "org/gnome/shell".disabled-extensions = [
            "Vitals@CoreCoding.com"
        ];
    };
}