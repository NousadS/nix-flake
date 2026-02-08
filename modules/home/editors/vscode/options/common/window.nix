{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings.window.titleBarStyle = "custom";
  };
}
