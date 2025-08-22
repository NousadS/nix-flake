{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "languages";
    name = "python";
    body = {
        environment.systemPackages = [
            pkgs.python313
            pkgs.pdm
        ];
    };
}
