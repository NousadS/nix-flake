{ config, lib, pkgs, ... }:

let
    cfg = config.modules.languages.python;
in {
    options = {
        modules.languages.python.enable = lib.mkEnableOption "enables languages.python";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.python313
        ];
    };  
}
