{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    keybindings = [
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
        key = "ctrl+shift+i";
        command = "editor.action.formatDocument";
        when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
      }
      {
        key = "ctrl+[Backquote]";
        command = "workbench.action.terminal.toggleTerminal";
        when = "terminal.active";
      }
    ];
  };
}
