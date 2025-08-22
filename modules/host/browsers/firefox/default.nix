{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "browsers";
    name = "firefox";
    body = {
        environment.systemPackages = [
            pkgs.firefox
        ];
    };
}

