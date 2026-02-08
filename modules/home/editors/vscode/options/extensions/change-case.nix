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
        wmaurer.change-case
      ];

    userSettings = {
    };
  };
}
