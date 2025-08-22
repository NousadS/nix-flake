{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "fetches";
    name = "neofetch";
    body = {
        environment.systemPackages = [
            pkgs.neofetch
        ];
    };
}

