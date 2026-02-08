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

        arrterian.nix-env-selector
        jnoortheen.nix-ide
        mkhl.direnv
        jeff-hykin.better-nix-syntax
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      ];

    userSettings = {
      "[nix]" = {
        editor.tabSize = 2;
        editor.defaultFormatter = "jnoortheen.nix-ide";
      };
      nix = {
        enableLanguageServer = true;
        serverPath = "nil";
        serverSettings = {
          nil = {
            formatting = {
              "command" = [ "nixfmt" ];
            };
          };
        };
      };
    };
  };
}
