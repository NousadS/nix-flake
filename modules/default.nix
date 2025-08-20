{ config, lib, pkgs, ... }:

{
    imports = [
        ./browsers/chrome.nix
        ./browsers/firefox.nix

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

        ./languages/python.nix

        ./shells/zsh.nix

        ./terminals/alacritty.nix
        ./terminals/ghostty.nix
    ];
}
