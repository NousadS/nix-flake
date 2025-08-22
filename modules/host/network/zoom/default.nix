{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "network";
    name = "zoom";
    body = {
        environment.systemPackages = [
            pkgs.zoom-us
        ];
    };
}

