{ config, pkgs, ... }:

{
    imports = [
        ./environment.nix
        ./features.nix
        ./garbage.nix
        ./packages.nix
        ./users.nix
        ./xserver.nix

        ../../../modules/system
    ];
}
