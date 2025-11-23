{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args: let
    theme = pkgs.minimal-grub-theme;
in
    mkModule {
        boot.loader.systemd-boot.enable = false;

        boot.loader.grub = {
            enable = true;
            device = "nodev";
            efiSupport = true;

            gfxmodeEfi = "1920x1080";
            gfxmodeBios = "1920x1080";
            gfxpayloadEfi = "1920x1080";
            gfxpayloadBios = "1920x1080";

            theme = lib.mkForce "${theme}/";
            # font = lib.mkForce "${pkgs.grub}/share/grub/unicode.pf2";
            fontSize = lib.mkForce 16;

            extraConfig = ''
                insmod all_video
                insmod efi_gop
                insmod efi_uga
                insmod gfxterm
                insmod gfxmenu

                terminal_output gfxterm
            '';

            useOSProber = false;
            extraEntriesBeforeNixOS = false;
            extraEntries = ''
                menuentry "Windows" --class windows --class os {
                    insmod part_gpt
                    insmod fat
                    search --fs-uuid --set=root 0809-C1E8
                    chainloader /EFI/Microsoft/Boot/bootmgfw.efi
                }
            '';

            copyKernels = true;
            efiInstallAsRemovable = true;
        };

        boot.loader.efi.canTouchEfiVariables = false;
    }
