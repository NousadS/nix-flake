{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        prettier.tabWidth = 4;
    };
}