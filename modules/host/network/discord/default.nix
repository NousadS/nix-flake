{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "network";
    name = "discord";
    body = {
        environment.systemPackages = [
            pkgs.discord
        ];
    };
}


