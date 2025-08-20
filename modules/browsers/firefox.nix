{ config, lib, pkgs, ... }:

let
    cfg = config.browsers.firefox;
in {
    options = {
        browsers.firefox.enable = lib.mkEnableOption "enables browsers.firefox";
    };

    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.firefox
        ];
    };  
}
