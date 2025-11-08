{ config, lib, pkgs, ... }:

{
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "ms-vscode";
            name = "hexeditor";
            version = "1.11.1";
            sha256 = "sha256-RB5YOp30tfMEzGyXpOwPIHzXqZlRGc+pXiJ3foego7Y=";
        }
        {
            publisher = "basdp";
            name = "language-gas-x86";
            version = "0.0.2";
            sha256 = "sha256-PbXhOsoR0/5wXuFrzwCcauM1uGgfQoSRTj0gPVVZ4Kg=";
        }
    ];
}
