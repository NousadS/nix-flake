{ config, lib, pkgs, ... }:

{
    imports = [ ];

    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
}
