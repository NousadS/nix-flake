{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "browsers.chrome";
    body = {
        environment.systemPackages = [
            pkgs.chrome
        ];
    };
}

