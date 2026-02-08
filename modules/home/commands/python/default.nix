{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    home.packages = [
        (pkgs.python312.withPackages (python-pkgs: [
            python-pkgs.virtualenv
        ]))

        pkgs.pdm
        pkgs.ruff
    ];
}
