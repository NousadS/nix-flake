{ config, lib, pkgs, stylix, ... }:

{
    imports = [
        ./colors.nix
        ./fonts.nix
        ./grub.nix
        ./theme.nix
    ];
}

