{
  config,
  lib,
  pkgs,
  mkModule,
  self,
  stylix,
  ...
}@args:
mkModule {
  imports = [
    ./profiles/default.nix
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscode.fhs;
    mutableExtensionsDir = true;
    profiles.default = {
      enableUpdateCheck = false; # Could only be set for profiles.default
      enableExtensionUpdateCheck = false; 
    };
  };

  stylix.targets.vscode.enable = true;

  home.sessionVariables.VISUAL = "code";
}
