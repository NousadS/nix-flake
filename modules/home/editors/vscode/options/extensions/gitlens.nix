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
        eamodio.gitlens
      ];

    userSettings = {
    };
  };
}
