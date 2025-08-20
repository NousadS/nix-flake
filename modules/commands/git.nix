{ config, lib, pkgs, ... }:

let
    cfg = config.commands.git;
in {
    options = {
        commands.git.enable = lib.mkEnableOption "enables commands.git";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.git
        ];
    };  
}
