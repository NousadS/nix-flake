{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "commands.gh";
    body = {
        environment.systemPackages = [
            pkgs.gh
        ];
    };
}

