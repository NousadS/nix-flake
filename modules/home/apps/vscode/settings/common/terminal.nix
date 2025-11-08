{ config, lib, pkgs, ... }:

{
    userSettings.terminal = {
        integrated = {
            defaultProfile.windows = "Command Prompt";
            defaultProfile.linux = "zsh";
        };

        explorerKind = "external";
        external.linuxExec = "/usr/bin/zsh";
    };
}