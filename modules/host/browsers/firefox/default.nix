{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "browsers";
    name = "firefox";
    body = {
        programs.firefox.enable = true;
    };
}

