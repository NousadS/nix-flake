{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "network.spotify";
    body = {
        environment.systemPackages = [
            pkgs.spotify
        ];
    };
}



