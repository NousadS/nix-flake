{ config, lib, pkgs, mkModule, ... }:

mkModule {
    environment.systemPackages = [
        pkgs.vlc
    ];
}


