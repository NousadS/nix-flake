{ config, pkgs, ... }:

{
    imports = [
        # ../../modules/core-home/...

        ../../modules/home
    ];

    modules.home = {
        configs.dev.enable = true;
        configs.ghostty.enable = true;
        configs.vscode.enable = true;
        configs.zsh.enable = true;

        desktops.gnome.enable = true;
    };
}
