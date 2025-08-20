{ config, lib, pkgs, ... }:

let
    cfg = config.modules.commands.tree;
in {
    options = {
        modules.commands.tree.enable = lib.mkEnableOption "enables commands.tree";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.tree
        ];
    };  
}
