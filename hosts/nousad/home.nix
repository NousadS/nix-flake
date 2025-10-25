{ config, pkgs, inputs, self, ... }:

{
    imports = [
        (self + "/homes/nousad/")
    ];

    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;

    home-manager.backupFileExtension = "backup";

    home-manager.extraSpecialArgs = inputs // { inherit inputs; };
}