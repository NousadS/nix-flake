{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[css]" = {
            editor.defaultFormatter = "vscode.css-language-features";
        };
    };
}