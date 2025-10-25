{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.keybindings = [
        {
            key = "ctrl+/";
            command = "workbench.action.addComment";
            when = "activeCursorHasCommentingRange";
        }
    ];
}