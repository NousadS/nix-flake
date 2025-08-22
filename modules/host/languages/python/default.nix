{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "languages.python";
    body = {
        environment.systemPackages = [
            pkgs.python313
            pkgs.pdm
        ];
    };
}
