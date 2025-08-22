{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "terminals.ghostty";
    body = {
        environment.systemPackages = [
            pkgs.ghostty
        ];
    };
}

