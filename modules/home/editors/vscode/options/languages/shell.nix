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
        foxundermoon.shell-format

      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          publisher = "jeff-hykin";
          name = "better-shellscript-syntax";
          version = "1.10.0";
          sha256 = "sha256-z/m+wQV1N2KAAoyxn4Bio2ZpyzvdyTxRy67Ox2lD+aM=";
        }
      ];

    userSettings = {
    };
  };
}
