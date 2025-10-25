{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
        bradlc.vscode-tailwindcss
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "esdete";
            name = "tailwind-rainbow";
            version = "0.2.1";
            sha256 = "sha256-/AiGMgwCeD9B3y8LxTe6HoIswLuCnLbmwV7fxwfWSLw=";
        }
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