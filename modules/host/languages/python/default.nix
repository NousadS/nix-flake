{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "languages";
    name = "python";
    body = {
        environment.systemPackages = [
            pkgs.python313

            pkgs.python312Packages.virtualenv

            pkgs.pdm
        ];
    };
}
