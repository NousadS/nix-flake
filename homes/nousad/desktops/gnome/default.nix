{ config, lib, pkgs, ... }:

{
    programs.gnome-shell.extensions = with pkgs.gnomeExtensions; [
        user-themes
    ];

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
    };
}
