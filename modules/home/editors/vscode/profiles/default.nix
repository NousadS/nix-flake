{ config, lib, pkgs, ... } @ args:

let
  profilePaths = [
    ../settings/common/editor
    ../settings/common/explorer
    ../settings/common/files
    ../settings/common/terminal
    ../settings/common/window
    ../settings/common/workbench

    ../settings/extensions/ansi.nix
    ../settings/extensions/batch-rename.nix
    ../settings/extensions/better-comments.nix
    ../settings/extensions/c-spell.nix
    ../settings/extensions/change-case.nix
    ../settings/extensions/choose-a-license.nix
    ../settings/extensions/codesnap.nix
    ../settings/extensions/cursor-char-code.nix
    ../settings/extensions/file-properties.nix
    ../settings/extensions/google-translate.nix
    ../settings/extensions/hide-files.nix
    ../settings/extensions/live-server.nix
    ../settings/extensions/material-icon-theme.nix
    ../settings/extensions/path-intellisense.nix
    ../settings/extensions/prettier.nix
    ../settings/extensions/rename-replace.nix
    ../settings/extensions/vscord.nix

    ../settings/languages/binary.nix
    ../settings/languages/c-cpp.nix
    ../settings/languages/css.nix
    ../settings/languages/html.nix
    ../settings/languages/js-ts.nix
    ../settings/languages/json.nix
    ../settings/languages/markdown.nix
    ../settings/languages/minecraft-datapacks.nix
    ../settings/languages/nix.nix
    ../settings/languages/python.nix
    ../settings/languages/shell.nix
    ../settings/languages/svelte.nix
    ../settings/languages/svg.nix
    ../settings/languages/toml.nix
    ../settings/languages/vue.nix
  ];

  # Import each module and separate extensions from other attributes
  importedModules = map (path:
    let
      module = import path args;
    in
    {
      extensions = module.extensions or [];
      otherAttrs = removeAttrs module [ "extensions" ];
    }
  ) profilePaths;

  # Concatenate all extensions lists
  allExtensions = lib.concatLists (map (m: m.extensions) importedModules);

  # Merge all other attributes (e.g., userSettings)
  combinedOtherAttrs = lib.foldl' lib.recursiveUpdate {} (map (m: m.otherAttrs) importedModules);

  # Combine extensions and other attributes into final config
  combinedConfig = combinedOtherAttrs // { extensions = allExtensions; };
in
{
  programs.vscode = {
    extensions = combinedConfig.extensions or [];
    userSettings = combinedConfig.userSettings or combinedConfig.settings or {};
  };
}