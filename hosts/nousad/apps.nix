{ config, pkgs, ... }:

{
    imports = [
        ../../modules
    ];

    modules.browsers.chrome.enable = true;
    modules.browsers.firefox.enable = false;
    modules.browsers.tor.enable = true;

    modules.commands.bat.enable = true;
    modules.commands.eza.enable = true;
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

    modules.games.prism-launcher.enable = true;

    modules.languages.python.enable = true;

    modules.media.gimp.enable = true;
    modules.media.vlc.enable = true;

    modules.network.discord.enable = true;
    modules.network.spotify.enable = true;
    modules.network.telegram-desktop.enable = true;
    modules.network.zoom.enable = true;

    modules.shells.zsh.enable = true;

    modules.terminals.alacritty.enable = false;
    modules.terminals.ghostty.enable = true;
}
