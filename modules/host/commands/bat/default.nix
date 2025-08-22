{ config, lib, pkgs, mkModule, ... }:

mkModule {
    name = "commands.bat";
    body = {
        environment.systemPackages = [
            pkgs.bat
        ];
    };
}

