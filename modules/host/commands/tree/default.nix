{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "tree";
    body = {
        environment.systemPackages = [
            pkgs.tree
        ];
    };
}

