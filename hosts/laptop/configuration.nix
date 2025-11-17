{
    config,
    pkgs,
    ...
}: {
    system.stateVersion = "25.05";
    networking.hostName = "nousad";

    nixpkgs.hostPlatform = "x86_64-linux";
    nixpkgs.config.allowUnfree = true;

    environment.variables = {
        GSK_RENDERER = "ngl";
        NIXOS_OZONE_WL = "1";
    };

    environment.localBinInPath = true;
}
