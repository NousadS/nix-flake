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

        apps.firefox.enable = false;
        apps.kdenlive.enable = false;
        apps.openshot.enable = false;
        apps.zoom.enable = false;

        commands.devenv.enable = false;
        commands.neovim.enable = false;
    };
}
