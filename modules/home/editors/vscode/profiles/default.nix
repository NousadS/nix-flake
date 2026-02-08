{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  imports = [
    ../options/editors/hexeditor.nix
    ../options/editors/sqlite.nix

    ../options/extensions/change-case.nix
    ../options/extensions/codesnap.nix
    ../options/extensions/cursor-char-code.nix
    ../options/extensions/errorlens.nix
    ../options/extensions/gitignore.nix
    ../options/extensions/gitlens.nix
    ../options/extensions/google-translate.nix
    ../options/extensions/hide-files.nix
    ../options/extensions/license.nix
    ../options/extensions/live-server.nix
    ../options/extensions/lldb.nix
    ../options/extensions/path-intellisense.nix
    ../options/extensions/prettier.nix
    ../options/extensions/rename-replace.nix
    ../options/extensions/spell.nix
    ../options/extensions/vscord.nix

    ../options/languages/asm.nix
    ../options/languages/c-cpp.nix
    ../options/languages/gleam.nix
    ../options/languages/java.nix
    ../options/languages/js-ts.nix
    ../options/languages/kotlin.nix
    ../options/languages/nix.nix
    ../options/languages/python.nix
    ../options/languages/rust.nix
    ../options/languages/shell.nix
    ../options/languages/svelte.nix


    ../options/markup/ansi.nix
    ../options/markup/comments.nix
    ../options/markup/css.nix
    ../options/markup/csv.nix
    ../options/markup/docker.nix
    ../options/markup/html.nix
    ../options/markup/json.nix
    ../options/markup/markdown.nix
    ../options/markup/svg.nix
    ../options/markup/toml.nix
    ../options/markup/xml.nix
    ../options/markup/yaml.nix

    ../options/themes/material-icons.nix
  ];
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
    userSettings = {
      files = {
        exclude."**/.vscode" = true;
        autoGuessEncoding = true;
        autoSave = "afterDelay";
      };


      "debug.allowBreakpointsEverywhere" = true;

      editor = {
        fontFamily = "'Fira Code'";
        fontSize = 14;
        fontLigatures = true;
        cursorBlinking = "expand";
        cursorSmoothCaretAnimation = "on";
        cursorStyle = "line-thin";
        selectionClipboard = false;
        autoClosingDelete = "never";
        formatOnSave = true;
        linkedEditing = true;
        stickyScroll.enabled = false;
        rulers = [ 88 ];
      };

      terminal.integrated = {
        fontFamily = "'Fira Code', 'MesloLGS NF'";
        fontSize = 11;
        fontLigatures = true;
        cursorStyle = "underline";
        cursorStyleInactive = "underline";
      };
      keyboard.dispatch = "keyCode";
      terminal = {
        integrated = {
          defaultProfile.windows = "Command Prompt";
          defaultProfile.linux = "zsh";
        };

        explorerKind = "external";
        external.linuxExec = "/usr/bin/zsh";
      };
      window.titleBarStyle = "custom";
      workbench = {
        iconTheme = "material-icon-theme";
        colorTheme = "Stylix";
        startupEditor = "none";
      };

      explorer = {
        confirmDragAndDrop = false;
        confirmDelete = true;
        compactFolders = false;
        confirmPasteNative = false;
      };
      prettier.tabWidth = 4;
    };
  };
}
