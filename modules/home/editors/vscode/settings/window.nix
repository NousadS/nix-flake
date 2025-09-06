{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        window.titleBarStyle = "custom";
    };
}