{ config, lib, pkgs, ... }:

let
    cfg = config.fetches.pfetch;
in {
    options = {
        fetches.pfetch.enable = lib.mkEnableOption "enables fetches.pfetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.pfetch
        ];
    };  
}
