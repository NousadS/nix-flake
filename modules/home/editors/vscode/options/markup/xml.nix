{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions =
      with pkgs.vscode-extensions;
      [
        redhat.vscode-xml

      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        
      ];

    userSettings = {
    };
  };
}
