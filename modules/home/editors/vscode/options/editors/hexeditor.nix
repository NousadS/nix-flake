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
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

        {
          publisher = "ms-vscode";
          name = "hexeditor";
          version = "1.11.1";
          sha256 = "sha256-RB5YOp30tfMEzGyXpOwPIHzXqZlRGc+pXiJ3foego7Y=";
        }
      ];

    userSettings = {
    };
  };
}
