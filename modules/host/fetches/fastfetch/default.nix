{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "fetches";
    name = "fastfetch";
    body = {
        environment.systemPackages = [
            pkgs.fastfetch
        ];
    };
}

