{ config, lib, pkgs, ... }:

{
    imports = [ ];

    networking.hostName = "nousad";
    networking.networkmanager.enable = true;
}
