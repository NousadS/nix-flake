{ config, lib, pkgs, ... }:

let
    cfg = config.modules.browsers.firefox;
in {
    options = {
        modules.browsers.firefox.enable = lib.mkEnableOption "enables browsers.firefox";
    };

    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.firefox
        ];
    };  
}
