{ config, lib, pkgs, ... }:

{
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "brunnerh";
            name = "file-properties-viewer";
            version = "1.2.0";
            sha256 = "sha256-SeaQCxQoSqx5hgI26EM6qYdltxJfU6eaizZPbpS7t00=";
        }
    ];
}