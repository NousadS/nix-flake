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

        funkyremi.vscode-google-translate
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      ];

    userSettings = {
    };
  };
}
