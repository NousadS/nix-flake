{ config, lib, pkgs, ... }:

let
    cfg = config.modules.terminals.alacritty;
in {
    options = {
        modules.terminals.alacritty.enable = lib.mkEnableOption "enables terminals.alacritty";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.alacritty
        ];
    };  
}
