{
    config,
    pkgs,
    ...
}: {
    fileSystems."/mnt/Projects" = {
        device = "/dev/disk/by-uuid/031342890D055036";
        fsType = "ntfs";
        options = [
            "noauto"
            "nosuid"
            "nodev"
            "nofail"
            "x-gvfs-show"
            "x-gvfs-name=Projects"
        ];
    };

    fileSystems."/mnt/Data" = {
        device = "/dev/disk/by-uuid/1A65BE83562E7DCE";
        fsType = "ntfs";
        options = [
            "noauto"
            "nosuid"
            "nodev"
            "nofail"
            "x-gvfs-show"
            "x-gvfs-name=Data"
        ];
    };
}
