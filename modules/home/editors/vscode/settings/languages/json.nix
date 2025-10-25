{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    programs.vscode.profiles.default.userSettings = {
        "[json]" = {
            editor.defaultFormatter = "vscode.json-language-features";
            editor.tabSize = 4;
        };

        "[jsonc]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}