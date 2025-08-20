{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        terminal = {
            integrated = {
                cursorStyle = "underline",
                cursorStyleInactive = "underline",

                fontFamily = "'Fira Code', 'MesloLGS NF'",
                fontLigatures = true,
                fontSize = 11,

                defaultProfile.windows" = "Command Prompt",
                defaultProfile.linux = "zsh",
            };

            explorerKind = "external",
            external.linuxExec = "/usr/bin/zsh",
        };
    };
}