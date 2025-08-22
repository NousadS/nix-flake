{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "editors.nvim";
    body = {
        environment.systemPackages = [
            pkgs.nvim
        ];
    };
}

