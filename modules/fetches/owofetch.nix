{ config, lib, pkgs, ... }:

let
    cfg = config.modules.fetches.owofetch;
in {
    options = {
        modules.fetches.owofetch.enable = lib.mkEnableOption "enables fetches.owofetch";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.owofetch
        ];
    };  
}
