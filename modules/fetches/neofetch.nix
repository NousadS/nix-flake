{ config, lib, pkgs, ... }:

let
    cfg = config.modules.fetches.neofetch;
in {
    options = {
        modules.fetches.neofetch.enable = lib.mkEnableOption "enables fetches.neofetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.neofetch
        ];
    };  
}
