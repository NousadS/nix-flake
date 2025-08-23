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
    };
}
