{ config, lib, pkgs, ... }:

{
    users.users.nousad = {
        isNormalUser = true;
        description = "nousad";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = [ ];
    };
}
