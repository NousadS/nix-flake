{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    environment.systemPackages = [
        pkgs.alacritty
    ];
}

