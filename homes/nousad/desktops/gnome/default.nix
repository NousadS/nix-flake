{ config, lib, pkgs, ... }:

{
    programs.gnome-shell.extensions = with pkgs.gnomeExtensions; [
        user-themes
    ];

    dconf.settings = {
        "org/gnome/desktop/input-sources" = {
        show-all-sources = true;
        sources = [ (lib.mkTuple [ "xkb" "eu" ]) (lib.mkTuple [ "xkb" "us+altgr-intl" ]) ];
        xkb-options = [ "terminate:ctrl_alt_bksp" ];
        };
    };
}
