{ config, pkgs, ... }:

{
    programs.gnome-shell.extensions = with pkgs.gnomeExtensions; [
        user-themes
    ];
}
