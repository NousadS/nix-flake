{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "editors.vscode";
    body = {
        environment.systemPackages = [
            pkgs.vscode
        ];
    };
}

