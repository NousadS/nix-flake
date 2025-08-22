{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "terminals";
    name = "ghostty";
    body = {
        environment.systemPackages = [
            pkgs.ghostty
        ];
    };
}

