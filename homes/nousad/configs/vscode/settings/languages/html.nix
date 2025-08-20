{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[html]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}