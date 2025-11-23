{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    ...
} @ args:
mkModule {
    imports = [
        ./custom-keybinds.nix
        # ./customization.nix
    ];

    dconf.enable = true;
}
