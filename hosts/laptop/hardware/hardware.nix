{
  config,
  lib,
  pkgs,
  modulesPath,
  ...
}:
{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd={availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "firewire_ohci" "usb_storage" "usbhid" "sd_mod" "sdhci_pci" ];
  kernelModules = [ ];};
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;

  fileSystems."/" = lib.mkDefault
    { device = "/dev/disk/by-uuid/ec036c1b-08f6-434d-98b6-781368b7f5e1";
      fsType = "ext4";
    };

  fileSystems."/boot" =lib.mkDefault
    { device = "/dev/disk/by-uuid/0809-C1E8";
      fsType = "vfat";
      options = [ "fmask=0077" "dmask=0077" ];
    };

  swapDevices = lib.mkDefault [ ];

  networking.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
}
