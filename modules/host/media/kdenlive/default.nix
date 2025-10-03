{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "media";
    name = "kdenlive";
    body = {
        environment.systemPackages = [
            pkgs.kdenlive
        ];
    };
}


