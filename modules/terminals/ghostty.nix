{ config, lib, pkgs, ... }:

let
    cfg = config.modules.terminals.ghostty;
in {
    options = {
        modules.terminals.ghostty.enable = lib.mkEnableOption "enables terminals.ghostty";
    };

    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.ghostty
        ];
    };  
}
