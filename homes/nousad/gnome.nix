{ config, pkgs, ... }:

{
    programs.gnome-shell.extensions = [
        pkgs.gnomeExtensions.user-themes
    ];
}
