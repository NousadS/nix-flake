{
    config,
    lib,
    pkgs,
    ...
}: {
    boot.loader.grub.theme = lib.mkForce pkgs.sleek-grub-theme;
}
