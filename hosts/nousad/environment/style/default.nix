{ config, stylix, lib, pkgs, ... }:

{
    imports = [
        ./fonts.nix
        ./theme.nix
    ];

    stylix.enable = true;
}
