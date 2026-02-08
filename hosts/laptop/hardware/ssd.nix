{
    config,
    pkgs,
    ...
}: {
    fileSystems."/" = {
        device = "/dev/disk/by-uuid/ec036c1b-08f6-434d-98b6-781368b7f5e1";
        fsType = "ext4";
    };

    fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/0809-C1E8";
        fsType = "vfat";
        options = [
            "fmask=0077"
            "dmask=0077"
        ];
    };

    fileSystems."/mnt/Windows" = {
        device = "/dev/disk/by-uuid/BC1869AC1869667C";
        fsType = "ntfs";
        options = [
            "noauto"
            "nosuid"
            "nodev"
            "nofail"
            "x-gvfs-show"
            "x-gvfs-name=Windows"
        ];
    };
}
