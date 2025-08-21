{ config, pkgs, ... }:

{
    imports = [
        ./hardware
        ./environment

        ./apps.nix
    ];
}
