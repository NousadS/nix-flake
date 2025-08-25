{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "desktops";
    name = "gnome";
    body = {
        programs.gnome-shell.extensions = with pkgs.gnomeExtensions; [
            user-themes
        ];

        dconf.enable = true;

        dconf.settings = {
            # "org/gnome/desktop/input-sources" = {
            #     show-all-sources = true;
            #     sources = [
            #         [ "xkb" "us" ]
            #         [ "xkb" "ru" ]
            #         [ "xkb" "gr" ]
            #         [ "xkb" "de" ]
            #     ];
            #     xkb-options = [ "terminate:ctrl_alt_bksp" ];
            # };
            "org/gnome/shell/extensions/blur-my-shell" = {
                "blacklist"="@as []";
                "blur-on-overview"=false;
                "brightness"="1.0";
                "customize"=true;
                "enable-all"=true;
                "opacity"="250";
                "sigma"="59";
                "blur"=true;
            };
        };
    };
}