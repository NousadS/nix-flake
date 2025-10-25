{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    environment.systemPackages = [
        (pkgs.python312.withPackages (python-pkgs: [
            python-pkgs.virtualenv
        ]))

        pkgs.pdm
        pkgs.ruff
    ];
}
