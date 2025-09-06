{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[javascript]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
        
        "[typescript]" = {
            editor.tabSize = 4;
        };

        "[typescriptreact]" = {
            editor.defaultFormatter = "vscode.typescript-language-features";
        };
    };
}