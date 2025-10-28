{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    userSettings = {
        "[json]" = {
            editor.defaultFormatter = "vscode.json-language-features";
            editor.tabSize = 4;
        };

        "[jsonc]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}