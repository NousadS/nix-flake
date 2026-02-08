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
        ecmel.vscode-html-css
        bradlc.vscode-tailwindcss
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          publisher = "sporiley";
          name = "css-auto-prefix";
          version = "0.1.7";
          sha256 = "sha256-xmOVFK3Uhhky3cSfFEqgc4L0soCpF4csJf9Gdw6mqZA=";
        }
        {
          publisher = "esdete";
          name = "tailwind-rainbow";
          version = "0.2.1";
          sha256 = "sha256-f0TX+jVakNhFptAkaAy8Fil/YXAX321EhWjbdebGFTM=";
        }
      ];

    userSettings = {
      "[css]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };

      "[scss]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
    };
  };
}
