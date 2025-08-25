{ config, pkgs, ... }:

{
    imports = [
        ./environment.nix
        ./features.nix
        ./garbage.nix
        ./home.nix
        ./packages.nix
        ./users.nix
        ./xserver.nix

        ../../../modules/system
    ];
}
