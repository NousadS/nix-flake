{ config, lib, pkgs, ... }:

let
    cfg = config.terminals.alacritty;
in {
    options = {
        terminals.alacritty.enable = lib.mkEnableOption "enables terminals.alacritty";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.alacritty
        ];
    };  
}
