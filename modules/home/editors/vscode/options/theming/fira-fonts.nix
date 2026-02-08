{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    userSettings = {
      editor = {
        fontFamily = "'Fira Code'";
        fontSize = 14;
        fontLigatures = true;
      };
      terminal.integrated = {
        fontFamily = "'Fira Code', 'MesloLGS NF'";
        fontSize = 11;
        fontLigatures = true;
        cursorStyle = "underline";
        cursorStyleInactive = "underline";
      };
    };
  };
}
