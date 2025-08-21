{ config, lib, pkgs, ... }:

let
    cfg = config.modules.network.spotify;
in {
    options = {
        modules.network.spotify.enable = lib.mkEnableOption "enables network.spotify";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.spotify
        ];
    };  
}
