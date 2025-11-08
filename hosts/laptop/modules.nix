{ config, lib, pkgs, self, ... }:

{
    imports = [ (self + "/modules/host") ];

    modules.host = {
        bootloader.grub.enable = false;

        apps.alacritty.enable = false;
        apps.firefox.enable = false;
        apps.kdenlive.enable = false;
        apps.logseq.enable = false;
        apps.openshot.enable = false;
        apps.zoom.enable = false;

        commands.devenv.enable = false;
        commands.neovim.enable = false;

        keyboards.short.enable = false;
    };
}
