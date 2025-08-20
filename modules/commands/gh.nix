{ config, lib, pkgs, ... }:

let
    cfg = config.modules.commands.gh;
in {
    options = {
        modules.commands.gh.enable = lib.mkEnableOption "enables commands.gh";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.gh
        ];
    };  
}
