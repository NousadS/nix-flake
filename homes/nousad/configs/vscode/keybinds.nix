{ config, lib, pkgs, ... }:

{
    programs.vscode.keybindings = [
        {
            key: "ctrl+[Backquote]";
            command: "workbench.action.terminal.toggleTerminal";
            when: "terminal.active"
        }
        {
            key: "ctrl+/";
            command: "workbench.action.addComment";
            when: "activeCursorHasCommentingRange"
        }
    ];
}