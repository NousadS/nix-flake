{ config, pkgs, stylix, ... }:

{
    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;

    home-manager.backupFileExtension = "backup";

    home-manager.extraSpecialArgs = { inherit stylix; };
}
