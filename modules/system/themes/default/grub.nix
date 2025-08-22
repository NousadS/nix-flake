{ config, lib, pkgs, ... }:

{
    boot.loader.grub.theme = pkgs.sleek-grub-theme;
}

