{ config, lib, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = [
        pkgs.gtk3
    ];
}
