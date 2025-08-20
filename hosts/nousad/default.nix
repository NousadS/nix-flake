{ config, pkgs, ... }:

let 
    cfg = config.modules;
in {
    imports = [
        ../../modules

        ./audio.nix
        ./boot.nix
        ./desktop.nix
        ./environment.nix
        ./hardware.nix
        ./localization.nix
        ./network.nix
        ./printing.nix
        ./security.nix
        ./style.nix
        ./users.nix
    ];

    cfg.browsers.chrome.enable = true;
    cfg.browsers.firefox.enable = false;

    cfg.commands.gh.enable = true;
    cfg.commands.git.enable = true;
    cfg.commands.tree.enable = true;

    cfg.editors.micro.enable = true;
    cfg.editors.nvim.enable = true;
    cfg.editors.vscode.enable = true;

    cfg.fetches.fastfetch.enable = true;
    cfg.fetches.neofetch.enable = false;
    cfg.fetches.owofetch.enable = false;
    cfg.fetches.pfetch.enable = false;

    cfg.languages.python.enable = true;

    cfg.shells.zsh.enable = true;

    cfg.terminals.alacritty.enable = false;
    cfg.terminals.ghostty.enable = true;
}
