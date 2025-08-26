{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "configs";
    name = "zsh";
    body = {
        home.file = {
            ".p10k.zsh".source = self + "/assets/configs/zsh/p10k.zsh";
            ".zshrc".source = self + "/assets/configs/zsh/rc.zsh";
        };
    };
}