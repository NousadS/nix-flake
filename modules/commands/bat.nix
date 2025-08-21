{ config, lib, pkgs, ... }:

let
    cfg = config.modules.commands.bat;
in {
    options = {
        modules.commands.bat.enable = lib.mkEnableOption "enables commands.bat";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.bat
        ];
    };  
}
