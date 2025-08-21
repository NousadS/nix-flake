{ config, pkgs, ... }:

{
    imports = [
        ./desktop
        ./nix
        ./style

        ./environment.nix
        ./localization.nix
        ./packages.nix
        ./users.nix
    ];
}
