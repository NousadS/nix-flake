{ config, lib, pkgs, ... }:

let
    cfg = config.modules.editors.vscode;
in {
    options = {
        modules.editors.vscode.enable = lib.mkEnableOption "enables editors.vscode";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.vscode
        ];
    };  
}