{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "browsers";
    name = "tor";
    body = {
        environment.systemPackages = [
            pkgs.tor
        ];
    };
}

