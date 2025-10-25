{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    networking.networkmanager.enable = true;
}
