{ config, lib, pkgs, stylix, ... }:

{
    imports = [
        ./desktops/gnome

        ./localizations/default

        ./themes/default
    ];
}
