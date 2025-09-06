{ config, pkgs, ... }:

{
    imports = [
        # ../../modules/core-home/...

        ../../modules/home
    ];

    modules.home = {
        editors.neovim.enable = true;
        editors.vscode.enable = true;

        nousad.scripts.enable = true;

        services.solaar.enable = true;
        
        desktops.gnome.enable = true;

        shells.zsh.enable = true;

        terminals.ghostty.enable = true;
    };
}
