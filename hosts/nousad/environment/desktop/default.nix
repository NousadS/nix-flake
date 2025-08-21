{ config, lib, pkgs, ... }:

{
    imports = [
        ./keyboard.nix
        ./xserver.nix
    ];
}
