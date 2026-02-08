{
    config,
    pkgs,
    ...
}: {
    system.stateVersion = "25.11";
    nixpkgs.hostPlatform = "x86_64-linux";
    networking.hostName = "nousad";
}
