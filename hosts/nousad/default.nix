{ config, pkgs, ... }:

{
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

    browsers.chrome.enable = true;
    browsers.firefox.enable = false;

    commands.gh.enable = true;
    commands.git.enable = true;
    commands.tree.enable = true;

    editors.micro.enable = true;
    editors.nvim.enable = true;
    editors.vscode.enable = true;

    fetches.fastfetch.enable = true;
    fetches.neofetch.enable = false;
    fetches.owofetch.enable = false;
    fetches.pfetch.enable = false;

    languages.python.enable = true;

    shells.zsh.enable = true;

    terminals.alacritty.enable = false;
    terminals.ghostty.enable = true;
}
