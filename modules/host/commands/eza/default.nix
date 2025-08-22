{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "commands.eza";
    body = {
        environment.systemPackages = [
            pkgs.eza
        ];
    };
}

