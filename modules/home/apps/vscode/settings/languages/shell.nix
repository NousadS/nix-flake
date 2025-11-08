{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        foxundermoon.shell-format
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    userSettings = {
        "[css]" = {
            editor.defaultFormatter = "vscode.css-language-features";
        };

        "[scss]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}