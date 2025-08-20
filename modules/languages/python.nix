{ config, lib, pkgs, ... }:

let
    cfg = config.languages.python;
in {
    options = {
        languages.python.enable = lib.mkEnableOption "enables languages.python";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.python313
        ];
    };  
}
