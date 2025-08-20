{ config, lib, pkgs, ... }:

let
    cfg = config.modules.fetches.fastfetch;
in {
    options = {
        modules.fetches.fastfetch.enable = lib.mkEnableOption "enables fetches.fastfetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.fastfetch
        ];
    };  
}
