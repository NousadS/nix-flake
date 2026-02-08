{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings.editor = {
        cursorBlinking = "expand";
        cursorSmoothCaretAnimation = "on";
        cursorStyle = "line-thin";
      };
  };
}
