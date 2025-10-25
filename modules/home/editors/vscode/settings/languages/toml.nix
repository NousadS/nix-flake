{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
        tamasfe.even-better-toml
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
}