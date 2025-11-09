{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    stylix,
    ...
} @ args:
mkModule {
    home.file = {
        ".config/ghostty/config".text = ''
            font-family = "MesloLGS NF"

            cursor-style = bar
            cursor-style-blink = true

            background-opacity = 1.0
            background-blur = 20

            window-padding-x = 2
            window-padding-y = 2

            keybind = f11=toggle_fullscreen

            theme = GruvboxDarkHard
        '';
    };

    stylix.targets = {
        ghostty.enable = true;
    };
}
