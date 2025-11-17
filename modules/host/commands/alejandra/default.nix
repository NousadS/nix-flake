{
    config,
    lib,
    pkgs,
    mkModule,
    inputs,
    system,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        inputs.alejandra.defaultPackage.${system}

        (pkgs.writeShellScriptBin "ealejandra" ''
            alejandra --experimental-config ~/.config/alejandra/config.toml
        '')
    ];
}
