{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "editors";
    name = "nvim";
    body = {
        environment.systemPackages = [
            pkgs.nvim
        ];
    };
}

