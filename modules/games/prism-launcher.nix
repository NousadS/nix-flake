{ config, lib, pkgs, ... }:

let
    cfg = config.modules.games.prism-launcher;
in {
    options = {
        modules.games.prism-launcher.enable = lib.mkEnableOption "enables games.prism-launcher";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.prismlauncher
        ];
    };  
}
