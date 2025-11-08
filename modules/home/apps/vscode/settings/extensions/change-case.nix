{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        wmaurer.change-case
    ];
}