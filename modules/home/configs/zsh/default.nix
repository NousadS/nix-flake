{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "configs";
    name = "zsh";
    body = {
        home.file = {
            ".p10k.zsh".source = self + "/assets/configs/zsh/p10k.zsh";
        };

        programs.zsh.initContent = let 
            zshConfigEarlyInit = lib.mkOrder 1 ''
            #a
            ''; 
            zshConfig = lib.mkOrder 2 ''
            #b
            ''; 
        in lib.mkMerge [
            zshConfigEarlyInit
            zshConfig
        ];
    };
}