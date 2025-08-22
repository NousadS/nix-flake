{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "commands.git";
    body = {
        environment.systemPackages = [
            pkgs.git
        ];
    };
}

