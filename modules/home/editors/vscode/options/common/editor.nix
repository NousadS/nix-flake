{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings.editor = {
        selectionClipboard = false;
        autoClosingDelete = "never";
        formatOnSave = true;
        linkedEditing = true;
        stickyScroll.enabled = false;
        rulers = [ 88 ];
      };
  };
}
