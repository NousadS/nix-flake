{ config, lib, pkgs, mkModule, inputs, ... }:

mkModule {
    group = "editors";
    name = "neovim";
    
    imports = [
        inputs.nix4nvchad.homeManagerModule
    ];

    body = {
        programs.nvchad = {
            enable = true;
            extraPackages = with pkgs; [
                nodePackages.bash-language-server
                docker-compose-language-service
                dockerfile-language-server-nodejs
                emmet-language-server
                nixd
                (python3.withPackages(ps: with ps; [
                    python-lsp-server
                    flake8
                ]))
            ];
            hm-activation = true;
            backup = true;
        };
    };
}