{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "eza";
    body = {
        environment.systemPackages = [
            pkgs.eza
        ];
    };
}

