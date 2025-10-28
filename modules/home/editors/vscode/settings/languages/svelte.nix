{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        svelte.svelte-vscode
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "ardenivanov";
            name = "svelte-intellisense";
            version = "0.7.1";
            sha256 = "sha256-/AiGMgwCeD9B3y8LxTe6HoIswLuCnLbmwV7fxwfWSLw=";
        }
        {   
            publisher = "sebsojeda";
            name = "vscode-svx";
            version = "1.0.0";
            sha256 = "sha256-/AiGMgwCeD9B3y8LxTe6HoIswLuCnLbmwV7fxwfWSLw=";
        }
    ];
    
    userSettings = {
        "[svelte]" = {
            editor.defaultFormatter = "svelte.svelte-vscode";
        };

        svelte.enable-ts-plugin = true;
    };
}