{ config, lib, pkgs, ... }:

{
    imports = [
        ./browsers/chrome.nix
        ./browsers/firefox.nix
        ./browsers/tor.nix

        ./commands/bat.nix
        ./commands/eza.nix
        ./commands/gh.nix
        ./commands/git.nix
        ./commands/tree.nix

        ./editors/micro.nix
        ./editors/nvim.nix
        ./editors/vscode.nix

        ./fetches/fastfetch.nix
        ./fetches/neofetch.nix
        ./fetches/owofetch.nix
        ./fetches/pfetch.nix

        ./games/prism-launcher.nix

        ./languages/python.nix

        ./media/gimp.nix
        ./media/vlc.nix

        ./network/discord.nix
        ./network/spotify.nix
        ./network/telegram-desktop.nix
        ./network/zoom.nix

        ./shells/zsh.nix

        ./terminals/alacritty.nix
        ./terminals/ghostty.nix
    ];
}
