{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "network.discord";
    body = {
        environment.systemPackages = [
            pkgs.discord
        ];
    };
}


