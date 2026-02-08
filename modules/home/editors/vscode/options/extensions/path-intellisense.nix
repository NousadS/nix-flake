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
        christian-kohler.path-intellisense
      ];

    userSettings = {
    };
  };
}
