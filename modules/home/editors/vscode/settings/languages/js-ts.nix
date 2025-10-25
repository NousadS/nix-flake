{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    programs.vscode.profiles.default.userSettings = {
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