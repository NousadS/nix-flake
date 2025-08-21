{ config, lib, pkgs, ... }:

let
    cfg = config.modules.media.vlc;
in {
    options = {
        modules.media.vlc.enable = lib.mkEnableOption "enables media.vlc";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.vlc
        ];
    };  
}
