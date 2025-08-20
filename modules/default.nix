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

        ./languages/python.nix

        ./shells/zsh.nix

        ./terminals/alacritty.nix
        ./terminals/ghostty.nix
    ];
}
