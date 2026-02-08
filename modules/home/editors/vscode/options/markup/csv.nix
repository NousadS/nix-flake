{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        publisher = "jeff-hykin";
        name = "better-csv-syntax";
        version = "1.0.1";
        sha256 = "sha256-NlED+xA0rWgclVMQx6fkS7v0dxdWpXxUDY5Yo6XeqO8=";
      }
    ];

    userSettings = {
    };
  };
}
