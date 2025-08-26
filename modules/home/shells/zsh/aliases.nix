{ config, lib, pkgs, self, ... }:

{
    programs.zsh.shellAliases = {
        "la" = "eza -la";
        "ll" = "eza -l";
        "lt" = "eza --tree";

        ".." = "cd ..";
    };
}