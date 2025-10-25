{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    environment.systemPackages = [
        pkgs.gcc
        pkgs.libgcc
        pkgs.glibc
        pkgs.gdb
        pkgs.valgrind
    ];
}
