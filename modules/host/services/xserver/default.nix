{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    services.xserver.enable = true;
}
