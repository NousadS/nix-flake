{ config, lib, pkgs, ... }:

let
    cfg = config.modules.commands.git;
in {
    options = {
        modules.commands.git.enable = lib.mkEnableOption "enables commands.git";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.git
        ];
    };  
}
