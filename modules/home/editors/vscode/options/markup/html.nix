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
        
      ];

    userSettings = {
      "[html]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
    };
  };
}
