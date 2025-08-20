{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        liveServer.settings = {
            donotShowInfoMsg = true;
            donotVerifyTags = true;
        };
    };
}