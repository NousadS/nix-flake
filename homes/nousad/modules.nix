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

        desktops.gnome.enable = true;
        
        shells.zsh.enable = true;
    };
}
