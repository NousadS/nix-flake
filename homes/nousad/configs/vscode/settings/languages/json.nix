{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[json]" = {
            editor.defaultFormatter = "vscode.json-language-features";
            editor.tabSize = 4;
        };

        "[jsonc]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}