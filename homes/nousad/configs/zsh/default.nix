{ config, lib, pkgs, ... }:

{
    home.file = {
        ".p10k.zsh".source = ../../../../configs/zsh/.p10k.zsh;
        ".zshrc".source = ../../../../configs/zsh/.zshrc;
    };
}