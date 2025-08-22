{ name, body }:

{
    { config, lib, pkgs, ... }:

    let
        cfg = config.modules.${name};
    in {
        options = {
            modules.${name}.enable = lib.mkEnableOption "enables ${name}";
        };
        
        config = lib.mkIf cfg.enable body;  
    }
}