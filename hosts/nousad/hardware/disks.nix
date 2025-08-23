{ config, lib, pkgs, ... }:

{
    fileSystems."/mnt/031342890D055036" = {
        device = "/dev/disk/by-uuid/031342890D055036";
        fsType = "auto";
        options = [ "noauto" "x-gvfs-show" "nosuid" "nodev" "nofail" ];
    };
}
