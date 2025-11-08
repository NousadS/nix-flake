{ config, lib, pkgs, ... }:

{
    userSettings.files.associations = {
        "*.json" = "json";
        "*.jsonc" = "jsonc";
        "*.s" = "asm-intel-x86-generic";
    };
}