{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        vscord.status.idle.disconnectOnIdle = true;
    };
}