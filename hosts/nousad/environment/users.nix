{ config, lib, pkgs, ... }:

{
    users.users.nousad = {
        isNormalUser = true;
        description = "nousad";
        extraGroups = [ "networkmanager" "wheel" ];
        packages = [ ];
    };

    home-manager.users.nousad = import ../../../homes/nousad;
}
