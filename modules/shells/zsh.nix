{ config, lib, pkgs, ... }:

let
    cfg = config.modules.shells.zsh;
in {
    options = {
        modules.shells.zsh.enable = lib.mkEnableOption "enables shells.zsh";
    };

    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.zsh
            pkgs.zsh-powerlevel10k
            pkgs.oh-my-zsh
        ];

        users.defaultUserShell = pkgs.zsh;

        programs.zsh = {
            enable = true;

            enableCompletion = true;
            enableBashCompletion = true;
            autosuggestions.enable = true;
            syntaxHighlighting.enable = true;

            ohMyZsh = {
                enable = true;
                plugins = ["git" "sudo"];
            };

            promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
        };
    };  
}
