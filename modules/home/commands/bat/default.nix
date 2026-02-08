{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    programs.bat.enable = true;
}
