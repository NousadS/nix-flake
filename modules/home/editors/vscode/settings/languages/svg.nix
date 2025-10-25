{ config, lib, pkgs, ... }:

{
    programs.vscode.profiles.default.extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    programs.vscode.profiles.default.userSettings = {
        "[svg]" = {
            editor.defaultFormatter = "jock.svg";
        };

        svg.preview.mode = "svg";
    };
}