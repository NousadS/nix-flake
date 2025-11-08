{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        ritwickdey.liveserver
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    userSettings = {
        liveServer.settings = {
            donotShowInfoMsg = true;
            donotVerifyTags = true;
        };

        "[html]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}