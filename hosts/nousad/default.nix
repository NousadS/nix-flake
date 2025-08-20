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

    modules.browsers.chrome.enable = true;
    modules.browsers.firefox.enable = false;

    modules.commands.gh.enable = true;
    modules.commands.git.enable = true;
    modules.commands.tree.enable = true;

    modules.editors.micro.enable = true;
    modules.editors.nvim.enable = true;
    modules.editors.vscode.enable = true;

    modules.fetches.fastfetch.enable = true;
    modules.fetches.neofetch.enable = false;
    modules.fetches.owofetch.enable = false;
    modules.fetches.pfetch.enable = false;

    modules.languages.python.enable = true;

    modules.shells.zsh.enable = true;

    modules.terminals.alacritty.enable = false;
    modules.terminals.ghostty.enable = true;
}
