{ config, lib, pkgs, ... }:

{
    
    extensions = with pkgs.vscode-extensions; [
        leonardssh.vscord
    ];

    userSettings = {
        vscord.status.idle.disconnectOnIdle = true;
    };
}