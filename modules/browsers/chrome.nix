{ config, lib, pkgs, ... }:

let
    cfg = config.modules.browsers.chrome;
in {
    options = {
        modules.browsers.chrome.enable = lib.mkEnableOption "enables browsers.chrome";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.google-chrome
        ];
    };  
}
