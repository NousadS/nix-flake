{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "git";
    body = {
        environment.systemPackages = [
            pkgs.git
        ];
    };
}

