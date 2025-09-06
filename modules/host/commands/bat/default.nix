{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "bat";
    body = {
        programs.bat.enable = true;
    };
}

