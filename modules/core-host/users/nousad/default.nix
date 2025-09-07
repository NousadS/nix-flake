{ config, lib, pkgs, ... }:

{
    users.users.nousad = {
        isNormalUser = true;
        description = "nousad";
        extraGroups = [
            "networkmanager"
            "wheel"
            "input"
            "scanner"
            "lp" 
        ];
        packages = [ ];
    };

    home-manager.users.nousad = import ./../../../../homes/nousad;
}
