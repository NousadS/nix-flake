{ config, lib, pkgs, ... }:

{
    users.users.nousad = {
        isNormalUser = true;
        description = "nousad";
        extraGroups = [ "networkmanager" "wheel" "input" ];
        packages = [ ];
    };

    home-manager.users.nousad = import ./../../../../homes/nousad;
}
