{ config, pkgs, ... }:

{
    imports = [
        # ../../modules/core-host/bootloader/grub
        ../../modules/core-host/bootloader/systemd

        ../../modules/core-host/desktops/gnome

        ../../modules/core-host/filesystem/ntfs

        ../../modules/core-host/keyboards/long
        # ../../modules/core-host/keyboards/short

        ../../modules/core-host/localizations/default

        ../../modules/core-host/services/audio
        ../../modules/core-host/services/network
        ../../modules/core-host/services/printing
        ../../modules/core-host/services/security
        ../../modules/core-host/services/stylix
        ../../modules/core-host/services/xserver

        ../../modules/core-host/themes/default

        ../../modules/core-host/users/nousad

        ../../modules/host
    ];

    modules.host = {
        browsers.chrome.enable = true;
        browsers.firefox.enable = false;
        browsers.tor.enable = true;

        commands.bat.enable = true;
        commands.eza.enable = true;
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

        games.prism-launcher.enable = true;

        languages.python.enable = true;

        media.gimp.enable = true;
        media.vlc.enable = true;

        network.discord.enable = true;
        network.spotify.enable = true;
        network.telegram-desktop.enable = true;
        network.zoom.enable = true;

        shells.zsh.enable = true;

        terminals.alacritty.enable = false;
        terminals.ghostty.enable = true;
    };
}
