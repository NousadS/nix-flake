{
    config,
    pkgs,
    inputs,
    self,
    system,
    ...
} @ args: {
    imports = [
        inputs.home-manager.nixosModules.home-manager
        
        (self + "/homes/nousad/")
    ];

    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;

    home-manager.backupFileExtension = "backup";

    home-manager.extraSpecialArgs = inputs // {inherit inputs self system;};
}
