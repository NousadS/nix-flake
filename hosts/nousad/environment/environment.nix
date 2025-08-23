{ config, stylix, lib, pkgs, ... }:

{
    system.stateVersion = "25.05";

    environment.variables = {
        GSK_RENDERER = "ngl";
        NIXOS_OZONE_WL = "1";
        LD_LIBRARY_PATH = lib.mkForce "$LD_LIBRARY_PATH:${pkgs.glibc}/lib";
    };
}
