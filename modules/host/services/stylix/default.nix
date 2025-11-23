{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    stylix.enable = true;

    imports = [
        inputs.stylix.nixosModules.stylix

        ./colors.nix
        ./fonts.nix
        ./theme.nix
    ];
}
