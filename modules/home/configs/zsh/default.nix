{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "configs";
    name = "zsh";
    body = {
        home.file = {
            ".p10k.zsh".source = ./../../../../../assets/configs/zsh/p10k.zsh;
            ".zshrc".source = ./../../../../../assets/configs/zsh/rc.zsh;
        };
    };
}