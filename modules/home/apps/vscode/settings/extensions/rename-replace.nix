{ config, lib, pkgs, ... }:

{
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "wassim-k";
            name = "rename-replace-extension";
            version = "0.1.1";
            sha256 = "sha256-huNZ6jiwpW468gM9icXbxnuiYQZ7YpUamdLPKrVu2Ls=";
        }
    ];
}