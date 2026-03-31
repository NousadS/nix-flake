{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    networking.networkmanager.enable = true;
    networking.nftables.enable = true;

    networking.firewall = {
        enable = true;

        allowPing = true;
        pingLimit = "2/minute";

        logRefusedPackets = true;
        logReversePathDrops = true;
        logRefusedConnections = true;
        logRefusedUnicastsOnly = true;

        interfaces = {
            "wlo1" = {};
        };
    };
}
