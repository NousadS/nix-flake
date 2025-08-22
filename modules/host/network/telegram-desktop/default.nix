{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "network.telegram-desktop";
    body = {
        environment.systemPackages = [
            pkgs.telegram-desktop
        ];
    };
}


