{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "commands";
    name = "git";
    body = {
        programs.git.enable = true;
    };
}

