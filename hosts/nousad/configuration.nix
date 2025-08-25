{ config, pkgs, ... }:

{
    system.stateVersion = "25.05";
    networking.hostName = "nousad";

    environment.variables = {
        GSK_RENDERER = "ngl";
        NIXOS_OZONE_WL = "1";
    };
}
