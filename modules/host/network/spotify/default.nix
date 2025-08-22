{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "network";
    name = "spotify";
    body = {
        environment.systemPackages = [
            pkgs.spotify
        ];
    };
}



