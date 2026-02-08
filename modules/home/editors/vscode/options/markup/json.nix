{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions = with pkgs.vscode-extensions; [

    ];

    userSettings = {
      files.associations = {
        "*.json" = "json";
        "*.jsonc" = "jsonc";
      };
      "[json]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };

      "[jsonc]" = {
        editor.tabSize = 4;
        editor.defaultFormatter = "esbenp.prettier-vscode";
      };
    };
  };
}
