{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "fetches";
    name = "owofetch";
    body = {
        environment.systemPackages = [
            pkgs.owofetch
        ];
    };
}

