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

        ritwickdey.liveserver
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        
      ];

    userSettings = {
      liveServer.settings = {
        donotShowInfoMsg = true;
        donotVerifyTags = true;
      };
    };
  };
}
