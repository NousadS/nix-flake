{
    config,
    lib,
    pkgs,
    system,
    mkModule,
    ...
} @ args:
mkModule {
    home.file.".config/alejandra/config.toml".text = ''indentation = "FourSpaces"'';
}
