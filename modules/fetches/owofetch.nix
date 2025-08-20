{ config, lib, pkgs, ... }:

let
    cfg = config.fetches.owofetch;
in {
    options = {
        fetches.owofetch.enable = lib.mkEnableOption "enables fetches.owofetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.owofetch
        ];
    };  
}
