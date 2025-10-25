{ config, lib, pkgs, ... }:

{
    userSettings = {
        files = {
            exclude = {
                "**/__pycache__" = true;
                "**/.DS_Store" = false;
                "**/.hg" = false;
                "**/.svn" = false;
                "**/.vscode" = true;
                "**/CVS" = false;
                "**/Thumbs.db" = false;
            };

            associations = {
                "*.json" = "json";
                "*.yc" = "cpp";
                "*.circ" = "xm";
                "*.s" = "asm-intel-x86-generic";
            };
            
            autoGuessEncoding = true;
            autoSave = "afterDelay";
        };
    };
}