{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    home.packages = [
        # pkgs.jdk8
        pkgs.jdk21
        pkgs.maven
        pkgs.gradle
    ];
}
