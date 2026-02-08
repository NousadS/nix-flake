{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings.files = {
        exclude."**/.vscode" = true;
        autoGuessEncoding = true;
        autoSave = "afterDelay";
      };
  };
}
