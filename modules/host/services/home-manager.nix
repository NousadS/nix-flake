{
    config,
    lib,
    pkgs,
    inputs,
    system,
    self,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        inputs.home-manager.nixosModules.home-manager
    ];

    home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;

        backupFileExtension = "backup";

        extraSpecialArgs = inputs // {inherit inputs self system;};
    };
}
