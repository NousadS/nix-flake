{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    home.packages = [
        pkgs.gimp3-with-plugins
    ];
}
