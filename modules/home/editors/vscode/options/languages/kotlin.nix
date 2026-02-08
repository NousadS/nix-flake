{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions =
      with pkgs.vscode-extensions;
      [
        vscjava.vscode-maven
        vscjava.vscode-gradle
        vscjava.vscode-spring-initializr
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
          publisher = "fwcd";
          name = "kotlin";
          version = "0.2.36";
          sha256 = "sha256-tCpxFWSQZNhiHdJyxSbQ1QakS2jNqWQrA2/grLZklrM=";
        }
        {
          publisher = "cstef";
          name = "kotlin-formatter";
          version = "0.0.9";
          sha256 = "sha256-V+abyEzT790sfXvI+GnYcIWiWZ56xpCs/Bw0/JWtLHA=";
        }
      ];

    userSettings = {
    };
  };
}
