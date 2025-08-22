{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "media.gimp";
    body = {
        environment.systemPackages = [
            pkgs.gimp3-with-plugins
        ];
    };
}


