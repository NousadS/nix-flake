{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "media.vlc";
    body = {
        environment.systemPackages = [
            pkgs.vlc
        ];
    };
}


