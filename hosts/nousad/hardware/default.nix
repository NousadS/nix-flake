{ config, pkgs, ... }:

{
    imports = [
        ./hardware.nix
        
        ./audio.nix
        ./boot.nix
        ./disks.nix
        ./network.nix
        ./printing.nix
        ./security.nix
    ];
}
