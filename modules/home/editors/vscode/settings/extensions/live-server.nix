{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        ritwickdey.liveserver
    ];

    userSettings = {
        liveServer.settings = {
            donotShowInfoMsg = true;
            donotVerifyTags = true;
        };
    };
}