{ config, lib, pkgs, ... }:

let
    cfg = config.modules.SUBMODULE.MODULE;
in {
    # add to config.nix: modules.SUBMODULE.MODULE.enable = lib.mkEnableOption "enables SUBMODULE.MODULE";

    config = lib.mkIf cfg.enable {
        imports = [ ];
    };  
}
