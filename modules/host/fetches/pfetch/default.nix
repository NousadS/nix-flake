{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "fetches.pfetch";
    body = {
        environment.systemPackages = [
            pkgs.pfetch
        ];
    };
}


