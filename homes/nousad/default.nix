{ config, lib, pkgs, self, ... } @ args:

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

    home-manager.users.nousad = import ./home.nix;
}
