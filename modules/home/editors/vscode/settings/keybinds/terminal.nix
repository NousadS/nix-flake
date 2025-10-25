{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.keybindings = [
        {
            key = "ctrl+[Backquote]";
            command = "workbench.action.terminal.toggleTerminal";
            when = "terminal.active";
        }
    ];
}