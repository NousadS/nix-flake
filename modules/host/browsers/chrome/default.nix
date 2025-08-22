{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "browsers";
    name = "chrome";
    body = {
        environment.systemPackages = [
            pkgs.google-chrome
        ];
    };
}

