{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[nix]" = {
            editor.defaultFormatter = "";
            # editor.defaultFormatter = "kamadorueda.alejandra";
            editor.formatOnPaste = false;
            editor.formatOnSave = false;
            editor.formatOnType = false;
        };
        
        # alejandra.program = "alejandra";
    };
}