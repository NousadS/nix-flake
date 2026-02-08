{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    home.packages = [
        pkgs.obsidian
    ];
}
