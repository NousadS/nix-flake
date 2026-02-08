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
        adpyke.codesnap
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

        {
          publisher = "jeff-hykin";
          name = "polacode-2019";
          version = "0.6.2";
          sha256 = "sha256-qxfXvucSun3vMQCttV3Qzw/XhPAaVh0PgO0vfF5Pbok=";
        }
      ];

    userSettings = {
    };
  };
}
