{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "media";
    name = "gimp";
    body = {
        environment.systemPackages = [
            pkgs.gimp3-with-plugins
        ];
    };
}


