{ config, lib, pkgs, mkModule, inputs, ... } @ args:

mkModule {  
    # imports = [
    #     inputs.nix4nvchad.homeManagerModule
    # ];

    # programs.nvchad = {
    #     enable = true;
    #     extraPackages = with pkgs; [
    #         nodePackages.bash-language-server
    #         docker-compose-language-service
    #         dockerfile-language-server-nodejs
    #         emmet-language-server
    #         nixd
    #         (python3.withPackages(ps: with ps; [
    #             python-lsp-server
    #             flake8
    #         ]))
    #     ];
    #     hm-activation = true;
    #     backup = true;
    # };
}