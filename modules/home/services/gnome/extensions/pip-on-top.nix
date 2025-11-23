{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        pip-on-top
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "pip-on-top@rafostar.github.com"
        ];

        "org/gnome/shell/extensions/pip-on-top" = {
            stick = false;
        };
    };
}
