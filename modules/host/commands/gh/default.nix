{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "gh";
    body = {
        environment.systemPackages = [
            pkgs.gh
        ];
    };
}

