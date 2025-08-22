{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "network";
    name = "telegram-desktop";
    body = {
        environment.systemPackages = [
            pkgs.telegram-desktop
        ];
    };
}


