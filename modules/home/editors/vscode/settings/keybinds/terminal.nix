{ config, lib, pkgs, ... }:

{
    keybindings = [
        {
            key = "ctrl+[Backquote]";
            command = "workbench.action.terminal.toggleTerminal";
            when = "terminal.active";
        }
    ];
}