{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "terminals.alacritty";
    body = {
        environment.systemPackages = [
            pkgs.alacritty
        ];
    };
}

