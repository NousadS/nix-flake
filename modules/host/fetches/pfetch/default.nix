{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "fetches";
    name = "pfetch";
    body = {
        environment.systemPackages = [
            pkgs.pfetch
        ];
    };
}


