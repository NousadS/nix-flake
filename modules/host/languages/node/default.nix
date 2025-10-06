{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "languages";
    name = "node";
    body = {
        environment.systemPackages = [
            pkgs.nodejs
        ];
    };
}
