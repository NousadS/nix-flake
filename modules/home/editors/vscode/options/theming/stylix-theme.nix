{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings = {

      workbench.colorTheme = "Stylix";
    };
  };
}
