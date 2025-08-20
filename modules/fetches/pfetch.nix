{ config, lib, pkgs, ... }:

let
    cfg = config.modules.fetches.pfetch;
in {
    options = {
        modules.fetches.pfetch.enable = lib.mkEnableOption "enables fetches.pfetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.pfetch
        ];
    };  
}
