{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        christian-kohler.path-intellisense
    ];
}