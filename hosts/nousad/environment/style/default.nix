{ config, stylix, lib, pkgs, ... }:

{
    imports = [
        ./colors.nix
        ./fonts.nix
        ./theme.nix
    ];

    stylix.enable = true;
}
