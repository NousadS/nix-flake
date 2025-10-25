{ config, pkgs, ... }:

{
    fileSystems."/mnt/Projects" = {
        device = "/dev/disk/by-uuid/031342890D055036";
        fsType = "auto";
        options = [
            "noauto"
            "x-gvfs-show"
            "nosuid"
            "nodev"
            "nofail"
            "x-gvfs-name=Projects"
        ];
    };

    swapDevices = [ ];
}