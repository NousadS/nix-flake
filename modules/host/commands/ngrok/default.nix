{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "ngrok";
    body = {
        environment.systemPackages = [
            pkgs.ngrok
        ];
    };
}

