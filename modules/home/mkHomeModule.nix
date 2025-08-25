{ group, name, body, options ? {}, imports ? [] }:

{ config, lib, pkgs, ... }:

let
    cfg = config.modules.home.${group}.${name}; 
in {
    options = {
        modules.home.${group}.${name}.enable = lib.mkEnableOption("enables ${name}");
    };

    inherit imports;

    config = lib.mkIf cfg.enable body;
}