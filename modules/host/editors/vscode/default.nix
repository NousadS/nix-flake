{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "editors";
    name = "vscode";
    body = {
        environment.systemPackages = [
            pkgs.vscode
        ];
    };
}

