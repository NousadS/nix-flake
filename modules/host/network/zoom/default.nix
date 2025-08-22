{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "network.zoom";
    body = {
        environment.systemPackages = [
            pkgs.zoom-us
        ];
    };
}

