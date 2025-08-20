{ config, lib, pkgs, ... }:

{
    imports = [
        ./extensions.nix
        ./keybinds.nix
        ./settings.nix
    ];

    programs.vscode.enable = true;
}