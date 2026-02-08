{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions = with pkgs.vscode-extensions; [

    ];

    userSettings = {
      "[yaml]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
    };
  };
}
