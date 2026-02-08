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
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          publisher = "jeff-hykin";
          name = "better-js-syntax";
          version = "1.4.0";
          sha256 = "sha256-XBva8Q586yQQ2OOgAWz+0DChzUOmzKFuwc4kMaaxHOw=";
        }
      ];

    userSettings = {
      "[javascript]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };

      "[typescript]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };

      "[typescriptreact]" = {
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
    };
  };
}
