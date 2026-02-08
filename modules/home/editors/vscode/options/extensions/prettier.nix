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
        esbenp.prettier-vscode
      ];

    userSettings = {
    };
  };
}
