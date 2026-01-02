{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    environment.systemPackages = [
        pkgs.wireshark
    ];

    programs.wireshark.enable = true;
    programs.wireshark.dumpcap.enable = true;
    programs.wireshark.usbmon.enable = true;
}
