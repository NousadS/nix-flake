{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        color-picker
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "color-picker@tuberry"
        ];

        "org/gnome/shell/extensions/color-picker" = {
            # default-format=uint32 2
            enable-format = true;
            enable-notify = false;
            enable-systray = false;
            hsl-formatter = "hsl({Hu} {Sl} {Ll})";
        };
    };
}
