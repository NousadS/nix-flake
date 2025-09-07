{ config, lib, pkgs, ... }:

{
    programs.vscode.keybindings = [
        {
            key = "ctrl+[Backquote]";
            command = "workbench.action.terminal.toggleTerminal";
            when = "terminal.active";
        }
        {
            key = "ctrl+/";
            command = "workbench.action.addComment";
            when = "activeCursorHasCommentingRange";
        }
        {
            key = "ctrl+shift+o";
            command = "editor.action.organizeImports";
            when = "textInputFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/";
        }
        {
            key = "shift+alt+o";
            command = "-editor.action.organizeImports";
            when = "textInputFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/";
        }
        # {
        #     key = "ctrl+` ctrl+f";
        #     command = "workbench.action.toggleMaximizedPanel";
        #     when = "panelAlignment == 'center' || panelPosition != 'bottom' && panelPosition != 'top'";
        # }
    ];
}