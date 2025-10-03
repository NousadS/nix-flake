{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "media";
    name = "openshot";
    body = {
        environment.systemPackages = [
            pkgs.openshot-qt
        ];
    };
}


