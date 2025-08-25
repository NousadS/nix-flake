{ config, pkgs, users, ... }:

{
    imports = [
        ./configuration.nix
        ./modules.nix
    ];
}
