{ config, lib, pkgs, ... }:

{
    imports = [
        ./dev
        ./ghostty
        ./vscode
        ./zsh
    ];
}
