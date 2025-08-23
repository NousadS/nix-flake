{ config, lib, pkgs, ... }:

{
    nixpkgs.config.allowUnfree = true;

    environment.systemPackages = [
        pkgs.ntfs3g
    ];
}
