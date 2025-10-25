{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        arrterian.nix-env-selector
        kamadorueda.alejandra
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    userSettings = {
        "[nix]" = {
            editor.defaultFormatter = "kamadorueda.alejandra";
            editor.formatOnPaste = false;
            editor.formatOnSave = false;
            editor.formatOnType = false;
        };
        
        alejandra.program = "alejandra --experimental-config ";
    };
}