{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "browsers.firefox";
    body = {
        environment.systemPackages = [
            pkgs.firefox
        ];
    };
}

