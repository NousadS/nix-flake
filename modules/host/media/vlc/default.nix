{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "media";
    name = "vlc";
    body = {
        environment.systemPackages = [
            pkgs.vlc
        ];
    };
}


