{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "editors";
    name = "micro";
    body = {
        environment.systemPackages = [
            pkgs.micro
        ];
    };
}

