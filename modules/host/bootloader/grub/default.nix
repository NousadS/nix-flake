{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    boot.loader.grub = {
        enable = true;
        device = "nodev";
        useOSProber = true;
        efiSupport = true;
        theme = lib.mkForce pkgs.sleek-grub-theme;
    };

    boot.loader.efi.canTouchEfiVariables = true;
}
