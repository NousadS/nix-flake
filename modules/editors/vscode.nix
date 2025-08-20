{ config, lib, pkgs, ... }:

let
    cfg = config.editors.vscode;
in {
    options = {
        editors.vscode.enable = lib.mkEnableOption "enables editors.vscode";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.vscode
        ];
    };  
}