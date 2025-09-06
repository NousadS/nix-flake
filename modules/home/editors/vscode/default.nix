{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "editors";
    name = "vscode";
    
    imports = [
        ./extensions.nix # Breaks pylance
        ./keybinds.nix
        ./settings
    ];

    body = {
        programs.vscode.enable = true;

        programs.vscode = {
            enableUpdateCheck = false;
            enableExtensionUpdateCheck = false;
            mutableExtensionsDir = true;
        };
    };
}
