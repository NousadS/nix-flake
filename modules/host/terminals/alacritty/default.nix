{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "terminals";
    name = "alacritty";
    body = {
        environment.systemPackages = [
            pkgs.alacritty
        ];
    };
}

