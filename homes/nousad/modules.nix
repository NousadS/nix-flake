{
    config,
    lib,
    pkgs,
    self,
    ...
}: {
    imports = [(self + "/modules/home")];

    modules.home = {
        commands.neovim.enable = false;
        apps.ghostty.enable = false;
    };
}
