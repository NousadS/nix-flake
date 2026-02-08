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
          publisher = "roonie007";
          name = "hide-files";
          version = "1.0.3";
          sha256 = "sha256-twqUwMpTv17XlBK5aZ0RvFdTF01o/cefWtcXs+E93n4=";
        }
        
      ];

    userSettings = {
    };
  };
}
