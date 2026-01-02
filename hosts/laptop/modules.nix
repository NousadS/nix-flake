{
    config,
    lib,
    pkgs,
    self,
    ...
}: {
    imports = [(self + "/modules/host")];

    modules.host = {
        system.systemd.enable = false;
        system.grub.enable = true;

        apps.kitty.enable = true;
        apps.alacritty.enable = false;
        apps.tilix.enable = false;
        apps.firefox.enable = false;
        apps.kdenlive.enable = false;
        apps.openshot.enable = false;
        apps.logseq.enable = false;
        apps.zoom.enable = false;
        apps.wireshark.enable = true;

        commands.devenv.enable = false;
        commands.neovim.enable = false;
    };
}
