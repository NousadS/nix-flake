{ config, lib, pkgs, ... }:

let
    cfg = config.fetches.neofetch;
in {
    options = {
        fetches.neofetch.enable = lib.mkEnableOption "enables fetches.neofetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.neofetch
        ];
    };  
}
