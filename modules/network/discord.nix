{ config, lib, pkgs, ... }:

let
    cfg = config.modules.network.discord;
in {
    options = {
        modules.network.discord.enable = lib.mkEnableOption "enables network.discord";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.discord
        ];
    };  
}
