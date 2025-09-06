{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[svg]" = {
            editor.defaultFormatter = "jock.svg";
        };

        svg.preview.mode = "svg";
    };
}