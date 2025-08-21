{ config, lib, pkgs, ... }:

let
    cfg = config.modules.network.telegram-desktop;
in {
    options = {
        modules.network.telegram-desktop.enable = lib.mkEnableOption "enables network.telegram-desktop";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.telegram-desktop
        ];
    };  
}
