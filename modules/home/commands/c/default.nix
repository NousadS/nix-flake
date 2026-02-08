{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    home.packages = [
        pkgs.gcc
        pkgs.libgcc
        pkgs.glibc
        pkgs.gdb
        pkgs.valgrind
    ];
}
