{ config, pkgs, inputs, ... }:

{
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;

    home-manager.backupFileExtension = "backup";

    home-manager.extraSpecialArgs = inputs // { inherit inputs; };
}