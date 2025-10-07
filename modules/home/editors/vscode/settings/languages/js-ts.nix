{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[javascript]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
        
        "[typescript]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };

        "[typescriptreact]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}