{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    environment.systemPackages = [
        pkgs.tor
        pkgs.tor-browser
    ];
}

