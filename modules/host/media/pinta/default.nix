{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "media";
    name = "pinta";
    body = {
        environment.systemPackages = [
            pkgs.pinta
        ];
    };
}


