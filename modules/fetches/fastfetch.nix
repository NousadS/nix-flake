{ config, lib, pkgs, ... }:

let
    cfg = config.fetches.fastfetch;
in {
    options = {
        fetches.fastfetch.enable = lib.mkEnableOption "enables fetches.fastfetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.fastfetch
        ];
    };  
}
