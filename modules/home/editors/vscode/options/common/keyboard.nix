{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings.keyboard.dispatch = "keyCode";
  };
}
