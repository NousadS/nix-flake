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
        publisher = "eric-blanquer";
        name = "ansi-automatic-clean-viewer";
        version = "1.4.0";
        sha256 = "sha256-kIeeDQqXaWpjGGA53WLXH5E7CG0JNKaAmouFouCTXkY=";
      }
    ];

    userSettings = {
      ansiCleanViewer = {
        enabled = true;
        overrideCopyCommand = true;
        enableMiddleClickPaste = true;
        showAttributes = {
          "bold" = true;
          "italic" = true;
          "underline" = true;
          "strikethrough" = true;
        };
      };
    };
  };
}
