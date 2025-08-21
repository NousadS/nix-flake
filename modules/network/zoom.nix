{ config, lib, pkgs, ... }:

let
    cfg = config.modules.network.zoom;
in {
    options = {
        modules.network.zoom.enable = lib.mkEnableOption "enables network.zoom";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.zoom-us
        ];
    };  
}
