{ config, lib, pkgs, ... }:

let
    cfg = config.SUBMODULE.MODULE;
in {
    # add to config.nix: SUBMODULE.MODULE.enable = lib.mkEnableOption "enables SUBMODULE.MODULE";

    config = lib.mkIf cfg.enable {
        imports = [ ];
    };  
}
