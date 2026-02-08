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
        tamasfe.even-better-toml

      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        
      ];

    userSettings = {
    };
  };
}
