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

        ../../modules/core-host/users/nousad

        ../../modules/host
    ];

    modules.host = {
        browsers.chrome.enable = true;
        browsers.firefox.enable = false;
        browsers.tor.enable = true;

        commands.alejandra.enable = false;
        commands.bat.enable = true;
        commands.devenv.enable = true;
        commands.eza.enable = true;
        commands.gh.enable = true;
        commands.git.enable = true;
        commands.ngrok.enable = true;
        commands.tree.enable = false;

        editors.ghidra.enable = true;
        editors.micro.enable = true;
        editors.neovim.enable = true;
        editors.vscode.enable = true;

        fetches.fastfetch.enable = true;
        fetches.neofetch.enable = false;
        fetches.owofetch.enable = false;
        fetches.pfetch.enable = false;

        games.prism-launcher.enable = true;

        languages.python.enable = true;
        languages.node.enable = true;

        layers.bottles.enable = true;

        media.gimp.enable = true;
        media.kdenlive.enable = true;
        media.openshot.enable = true;
        media.pinta.enable = true;
        media.vlc.enable = true;

        network.discord.enable = true;
        network.spotify.enable = false;
        network.telegram-desktop.enable = true;
        network.zoom.enable = true;

        services.solaar.enable = true;

        shells.zsh.enable = true;

        terminals.alacritty.enable = false;
        terminals.ghostty.enable = true;

        themes.default.enable = true;
        # themes.default.theme = "gruvbox-dark-pale";
        # themes.default.wallpaper = "ThonkPad.jpg";
    };
}
