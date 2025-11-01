{ config, lib, pkgs, ... }:

{
    keybindings = [
        {
            key = "ctrl+shift+o";
            command = "editor.action.organizeImports";
            when = "textInputFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/";
        }
        { 
            key = "ctrl+shift+i";
            command = "editor.action.formatDocument";
            when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
        }
    ];
}