{
    config,
    pkgs,
    self,
    ...
}: {
    environment.variables = {
        GSK_RENDERER = "ngl";
        NIXOS_OZONE_WL = "1";
    };

    environment.localBinInPath = true;
    nixpkgs.config.allowUnfree = true;
    # nixpkgs.overlays = [
    #     "${self}/overlays"
    # ];
}
