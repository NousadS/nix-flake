{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "languages";
    name = "python";
    body = {
        environment.systemPackages = [
            (pkgs.python312.withPackages (python-pkgs: [
                python-pkgs.virtualenv
            ]))

            pkgs.pdm
        ];
    };
}
