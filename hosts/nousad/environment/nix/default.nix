{ config, pkgs, ... }:

{
    imports = [
        ./features.nix
        ./garbage.nix
    ];
}
