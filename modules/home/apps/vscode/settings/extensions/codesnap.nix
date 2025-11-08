{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        adpyke.codesnap
    ];
}