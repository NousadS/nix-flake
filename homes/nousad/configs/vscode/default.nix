{ config, lib, pkgs, ... }:

{
    imports = [
        ./extensions.nix
        ./keybinds.nix
        ./settings
    ];

    programs.vscode.enable = true;
}