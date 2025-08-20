{ config, lib, pkgs, ... }:

let
    cfg = config.modules.editors.micro;
in {
    options = {
        modules.editors.micro.enable = lib.mkEnableOption "enables editors.micro";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.micro
        ];
    };  
}
