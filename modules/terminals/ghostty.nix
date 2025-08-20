{ config, lib, pkgs, ... }:

let
    cfg = config.terminals.ghostty;
in {
    options = {
        terminals.ghostty.enable = lib.mkEnableOption "enables terminals.ghostty";
    };

    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.ghostty
        ];
    };  
}
