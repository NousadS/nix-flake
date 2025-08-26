{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "devenv";
    body = {
        environment.systemPackages = [
            pkgs.devenv
        ];
    };
}

