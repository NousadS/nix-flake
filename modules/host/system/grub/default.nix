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
        boot.loader = {
            systemd-boot.enable = false;

            grub = {
                enable = true;
                device = "nodev";
                efiSupport = true;

                gfxmodeEfi = "1368x768";
                gfxmodeBios = "1368x768";
                gfxpayloadEfi = "keep";
                gfxpayloadBios = "keep";

                theme = lib.mkForce "${theme}/";
                font = lib.mkForce "${pkgs.fira-mono}/share/fonts/opentype/FiraMono-Regular.otf";
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
                efiInstallAsRemovable = false;
            };

            efi.canTouchEfiVariables = true;
        };

        stylix.targets.grub.enable = true;
    }
