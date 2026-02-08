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
        vadimcn.vscode-lldb
      ];

    userSettings = {
      "lldb.executable" = "lldb";
    };
  };
}
