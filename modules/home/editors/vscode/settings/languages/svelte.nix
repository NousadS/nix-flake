{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[svelte]" = {
            editor.defaultFormatter = "svelte.svelte-vscode";
        };
    };
}