{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "libs";
    name = "glib";
    body = {
        programs.nix-ld = {
            enable = true;
            libraries = (config.programs.nix-ld.libraries or []) ++ [
                pkgs.glib
            ];
        };

        environment.variables = {
            LD_LIBRARY_PATH = lib.mkForce ''
                $LD_LIBRARY_PATH
                ${pkgs.glib}/lib
                ${pkgs.glibc}/lib
            '';
        };
    };
}
