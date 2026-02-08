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
        ms-azuretools.vscode-docker
        docker.docker
        ]++pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        publisher = "jeff-hykin";
        name = "better-dockerfile-syntax";
        version = "1.0.2";
        sha256 = "sha256-FaF+rhtAoWslmBoxet8rINyQlMxNl8kX1EE89ymnCcQ=";
      }
    ];

    userSettings = {

    };
  };
}
