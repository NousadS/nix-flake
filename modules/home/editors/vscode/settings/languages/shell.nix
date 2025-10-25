{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
        foxundermoon.shell-format
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    programs.vscode.profiles.default.userSettings = {
        "[css]" = {
            editor.defaultFormatter = "vscode.css-language-features";
        };

        "[scss]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}