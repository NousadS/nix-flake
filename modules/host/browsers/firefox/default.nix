{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    programs.firefox.enable = true;
}

