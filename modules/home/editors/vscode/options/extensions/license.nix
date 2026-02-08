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
          publisher = "ultram4rine";
          name = "vscode-choosealicense";
          version = "0.9.4";
          sha256 = "sha256-YmZ1Szvcv3E3q8JVNV1OirXFdYI29a4mR3rnhJfUSMM=";
        }
      ];

    userSettings = {
    };
  };
}
