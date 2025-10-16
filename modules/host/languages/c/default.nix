{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "languages";
    name = "c-cpp";
    body = {
        environment.systemPackages = [
            pkgs.libgcc
            pkgs.glibc
            pkgs.gdb
            pkgs.valgrind
        ];
    };
}
