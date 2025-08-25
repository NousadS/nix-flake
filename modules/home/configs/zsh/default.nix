{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "configs";
    name = "zsh";
    body = {
        home.file = {
            ".p10k.zsh".source = ./files/p10k.zsh;
            ".zshrc".source = ./files/rc.zsh;
        };
    };
}