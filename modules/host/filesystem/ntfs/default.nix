{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        pkgs.ntfs3g
    ];

    boot.supportedFilesystems = ["ntfs"];
}
