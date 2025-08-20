{ config, lib, pkgs, ... }:

let
    cfg = config.browsers.chrome;
in {
    options = {
        browsers.chrome.enable = lib.mkEnableOption "enables browsers.chrome";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.google-chrome
        ];
    };  
}
