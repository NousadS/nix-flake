{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions = 
      with pkgs.vscode-extensions;[
        aaron-bond.better-comments

      ];

    userSettings = {
    };
  };
}
