{ config, lib, pkgs, ... }:

let
    cfg = config.modules.commands.eza;
in {
    options = {
        modules.commands.eza.enable = lib.mkEnableOption "enables commands.eza";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.eza
        ];
    };  
}
