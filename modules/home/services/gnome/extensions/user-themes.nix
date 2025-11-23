{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        user-themes
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "user-theme@gnome-shell-extensions.gcampax.github.com"
        ];
    };
}