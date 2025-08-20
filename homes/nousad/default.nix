{ config, pkgs, ... }:

{
    imports = [
        ./configs
        ./environment.nix
        ./gnome.nix
        ./user.nix
    ];
}
