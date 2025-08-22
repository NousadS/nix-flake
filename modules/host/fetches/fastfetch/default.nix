{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "fetches.fastfetch";
    body = {
        environment.systemPackages = [
            pkgs.fastfetch
        ];
    };
}

