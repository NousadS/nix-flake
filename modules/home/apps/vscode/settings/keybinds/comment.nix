{ config, lib, pkgs, ... }:

{
    keybindings = [
        {
            key = "ctrl+/";
            command = "workbench.action.addComment";
            when = "activeCursorHasCommentingRange";
        }
    ];
}