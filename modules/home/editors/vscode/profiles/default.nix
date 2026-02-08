{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  imports = [
    ../options/common/editor.nix
    ../options/common/explorer.nix
    ../options/common/files.nix
    ../options/common/keyboard.nix
    ../options/common/terminal.nix
    ../options/common/window.nix

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

    ../options/keybinds/default.nix

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

    ../options/theming/fira-fonts.nix
    ../options/theming/line-smooth-cursors.nix
    ../options/theming/material-icons.nix
    ../options/theming/stylix-theme.nix
  ];

}
