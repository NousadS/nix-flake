{
    config,
    lib,
    pkgs,
    inputs,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        inputs.stylix.nixosModules.stylix

        ./colors.nix
        ./fonts.nix
        ./theme.nix
    ];

    stylix.enable = true;
}
