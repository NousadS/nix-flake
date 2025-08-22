{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "editors.micro";
    body = {
        environment.systemPackages = [
            pkgs.micro
        ];
    };
}

