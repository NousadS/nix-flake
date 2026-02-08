{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings.explorer = {
      confirmDragAndDrop = false;
      confirmDelete = true;
      compactFolders = false;
      confirmPasteNative = false;
    };
  };
}
