{ group, name, body, extraOptions ? {}, imports ? [] }:

{ config, lib, pkgs, ... }:

let
    cfg = config.modules.host.${group}.${name}; 
in {
    options = extraOptions // {
        modules.host.${group}.${name}.enable = lib.mkEnableOption("enables ${name}");
    };

    inherit imports;

    config = lib.mkIf cfg.enable body;
}