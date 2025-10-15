{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "layers";
    name = "bottles";
    body = {
        environment.systemPackages = [
            pkgs.bottles
        ];
    };
}


