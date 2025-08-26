{ config, lib, pkgs, self, ... }:

{
    home.file = {
        ".p10k.zsh".source = self + "/assets/configs/zsh/p10k.zsh";
    };
}