{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    programs.git.enable = true;
}

