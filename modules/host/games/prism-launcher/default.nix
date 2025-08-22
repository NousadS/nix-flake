{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "games";
    name = "prism-launcher";
    body = {
        environment.systemPackages = [
            pkgs.prismlauncher
        ];
    };
}


