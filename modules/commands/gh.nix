{ config, lib, pkgs, ... }:

let
    cfg = config.commands.gh;
in {
    options = {
        commands.gh.enable = lib.mkEnableOption "enables commands.gh";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.gh
        ];
    };  
}
