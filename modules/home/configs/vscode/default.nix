{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "configs";
    name = "vscode";
    
    imports = [
        ./extensions.nix
        ./keybinds.nix
        ./settings
    ];

    body = {
        programs.vscode.enable = true;

        programs.vscode = {
            enableUpdateCheck = false;
            enableExtensionUpdateCheck = false;
            mutableExtensionsDir = false;
        };
    };
}