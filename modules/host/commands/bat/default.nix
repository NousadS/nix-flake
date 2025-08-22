{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "bat";
    body = {
        environment.systemPackages = [
            pkgs.bat
        ];
    };
}

