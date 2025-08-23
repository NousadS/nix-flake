{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "libs";
    name = "glib";
    body = {
        programs.nix-ld = {
            enable = true;
            libraries = (config.programs.nix-ld.libraries or []) ++ [
                pkgs.glib
                pkgs.glibc
                pkgs.zlib
                pkgs.SDL2
                pkgs.SDL2_ttf
                pkgs.SDL2_mixer
            ];
        };

        environment.variables = {
            LD_LIBRARY_PATH = lib.mkForce (concatStringsSep ":" [
                "$LD_LIBRARY_PATH"
                "${pkgs.zlib}/lib"
                "${pkgs.SDL2}/lib"
                "${pkgs.SDL2_ttf}/lib"
                "${pkgs.SDL2_mixer}/lib"
            ]);
        };
    };
}
