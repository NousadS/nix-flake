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
        codezombiech.gitignore
      ];

    userSettings = {
      license = {
        author = "Nousad <nousad.cat@gmail.com>";
        default = "MIT";
      };
    };
  };
}
