{ config, stylix, lib, pkgs, ... }:

{
    system.stateVersion = "25.05";

    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    nix.optimise = {
        automatic = true;
        dates = [ "16:00" ];
    };

    nix.gc = {
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 30d";
    };

    nixpkgs.config.allowUnfree = true;
	
    environment.variables = {
        GSK_RENDERER = "ngl";
        NIXOS_OZONE_WL = "1";
    };

    environment.systemPackages = [
        pkgs.gtk3
    ];
}
