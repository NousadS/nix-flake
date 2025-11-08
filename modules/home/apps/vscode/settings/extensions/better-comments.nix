{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        aaron-bond.better-comments
    ];
}