{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "fetches.owofetch";
    body = {
        environment.systemPackages = [
            pkgs.owofetch
        ];
    };
}

