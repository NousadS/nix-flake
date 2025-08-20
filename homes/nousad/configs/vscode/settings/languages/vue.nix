{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[vue]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "Vue.volar";
        },
    };
}