{ config, lib, pkgs, ... }:

let
    cfg = config.modules.browsers.tor;
in {
    options = {
        modules.browsers.tor.enable = lib.mkEnableOption "enables browsers.tor";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.tor-browser
        ];
    };  
}
