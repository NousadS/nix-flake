{ config, lib, pkgs, ... }:

let
    cfg = config.commands.tree;
in {
    options = {
        commands.tree.enable = lib.mkEnableOption "enables commands.tree";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.tree
        ];
    };  
}
