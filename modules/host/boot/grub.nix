{
  config,
  lib,
  pkgs,
  self,
  ...
}:
{
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

      theme = lib.mkForce "${pkgs.minimal-grub-theme}/";
      font = lib.mkForce "${self}/assets/grub/FiraMono.pf2";
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
      extraEntries = '''';

      copyKernels = true;
      efiInstallAsRemovable = false;
    };

    efi.canTouchEfiVariables = true;
  };

  stylix.targets.grub.enable = true;
}
