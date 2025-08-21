{ config, pkgs, ... }:

{
    imports = [
        ./hardware.nix
        
        ./audio.nix
        ./boot.nix
        ./network.nix
        ./printing.nix
        ./security.nix
    ];
}
