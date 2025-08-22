{ config, lib, pkgs, ... }:

{
    networking.hostName = "nousad";
    
    networking.networkmanager.enable = true;
}
