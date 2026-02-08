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

      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

        {
          publisher = "basdp";
          name = "language-gas-x86";
          version = "0.0.2";
          sha256 = "sha256-PbXhOsoR0/5wXuFrzwCcauM1uGgfQoSRTj0gPVVZ4Kg=";
        }
        {
          publisher = "maziac";
          name = "asm-code-lens";
          version = "2.6.7";
          sha256 = "sha256-sLjUAJ8Pmqw2xtSai/cKe/s9Ac+RRdDR9ycj2n4kblY=";
        }
      ];

    userSettings = {
      files.associations = {
        "*.s" = "asm-intel-x86-generic";
      };
    };
  };
}
