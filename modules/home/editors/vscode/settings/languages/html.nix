{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    userSettings = {
        "[html]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}