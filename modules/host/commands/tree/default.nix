{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "commands.tree";
    body = {
        environment.systemPackages = [
            pkgs.tree
        ];
    };
}

