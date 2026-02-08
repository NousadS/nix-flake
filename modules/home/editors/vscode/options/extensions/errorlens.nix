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
        usernamehw.errorlens
      ];

    userSettings = {

      "errorLens.enabled" = true;
      "errorLens.fontWeight" = "bold";
    
      errorLens.enabledDiagnosticLevels = [
        "error"
        "warning"
        "info"
      ];
    };
  };
}
