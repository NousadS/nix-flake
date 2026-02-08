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
        leonardssh.vscord
      ];

    userSettings = {
      vscord.status.idle.disconnectOnIdle = true;
    };
  };
}
