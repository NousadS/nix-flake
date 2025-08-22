{ group, name, body, options ? {} }:

{ config, lib, pkgs, ... }:

let
    cfg = config.modules.${group}.${name}; 
in {
    options = {
        modules.${group}.${name}.enable = lib.mkEnableOption("enables ${name}");
    };

    config = lib.mkIf cfg.enable body;
}