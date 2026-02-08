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
        redhat.java
        vscjava.vscode-java-debug
        vscjava.vscode-java-test
        vscjava.vscode-maven
        vscjava.vscode-gradle
        vscjava.vscode-java-dependency
        vscjava.vscode-spring-initializr
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        
      ];

    userSettings = {

      "java.jdt.ls.java.home" = "${pkgs.jdk21}/lib/openjdk";

      # Configure multiple runtimes if you work on different projects
      "java.configuration.runtimes" = [
        {
          name = "JavaSE-21";
          path = "${pkgs.jdk21}/lib/openjdk";
          default = true;
        }
      ];

      # General Java Quality of Life
      "java.format.enabled" = true;
      "java.completion.enabled" = true;
      "java.autostart" = true;
    };
  };
}
