{ config, lib, pkgs, ... }:

let
    cfg = config.modules.media.gimp;
in {
    options = {
        modules.media.gimp.enable = lib.mkEnableOption "enables media.gimp";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.gimp3-with-plugins
        ];
    };  
}
