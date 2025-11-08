{ config, lib, pkgs, ... }:

{
    userSettings.files = {
            exclude = {
                "**/__pycache__" = true;
                "**/.vscode" = true;
            };

            associations = {
                "*.json" = "json";
                "*.jsonc" = "jsonc";
                "*.s" = "asm-intel-x86-generic";
            };
            
            autoGuessEncoding = true;
            autoSave = "afterDelay";
    };
}