{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "shells";
    name = "zsh";

    imports = [
        ./aliases.nix
        ./p10k.nix
        ./path.nix
        ./rc.nix
    ];

    body = {
        programs.zsh.enable = true;

        programs.zsh.shellAliases = {
            "la" = "eza -la";
            "ll" = "eza -l";
            "lt" = "eza --tree";

            ".." = "cd ..";
        };

        home.file = {
            ".p10k.zsh".source = self + "/assets/configs/zsh/p10k.zsh";
            ".zshrc".source = self + "/assets/configs/zsh/rc.zsh";
        };
    };
}