{ config, pkgs, ... }:

{
    imports = [
        ./configs
        ./desktops
        
        ./environment.nix
        ./user.nix
    ];
}
