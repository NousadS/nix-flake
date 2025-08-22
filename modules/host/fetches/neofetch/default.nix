{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "fetches.neofetch";
    body = {
        environment.systemPackages = [
            pkgs.neofetch
        ];
    };
}

