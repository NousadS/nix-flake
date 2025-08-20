{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        workbench = {
            iconTheme: "material-icon-theme";
            colorTheme: "Kolada";

            # colorCustomizations: {
            #     "editorSuggestWidget.background": "#000000"
            # };

            startupEditor: "none";
        };
    };
}