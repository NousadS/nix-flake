{ config, pkgs, ... }:

{
    imports = [
        ./environment.nix
        ./features.nix
        ./garbage.nix
        ./localization.nix
        ./packages.nix
        ./users.nix
        ./xserver.nix
    ];
}
