{ config, lib, pkgs, ... }:

{
    fileSystems."/mnt/031342890D055036" = {
        device = "/dev/disk/by-uuid/031342890D055036";
        fsType = "auto";
        options = [ "nosuid" "nodev" "nofail" "x-gvfs-show" ];
    };
}
