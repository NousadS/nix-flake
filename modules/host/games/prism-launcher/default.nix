{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "games.prism-launcher";
    body = {
        environment.systemPackages = [
            pkgs.prismlauncher
        ];
    };
}


