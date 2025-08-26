{ config, lib, pkgs, self, ... }:

{
    home.file = {
        ".zshrc".source = self + "/assets/configs/zsh/rc.zsh";
    };
}