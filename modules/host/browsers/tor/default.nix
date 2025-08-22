{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "browsers.tor";
    body = {
        environment.systemPackages = [
            pkgs.tor
        ];
    };
}

