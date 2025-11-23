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

    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;

        backupFileExtension = "backup";

        extraSpecialArgs = inputs // {inherit inputs self system;};
    };
}
