{ config, lib, pkgs, ... }:

let
    cfg = config.editors.micro;
in {
    options = {
        editors.micro.enable = lib.mkEnableOption "enables editors.micro";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.micro
        ];
    };  
}
