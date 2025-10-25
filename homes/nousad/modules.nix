{ config, lib, pkgs, self, ... }:

{
    imports = [
        # ../../modules/core-home/...

        (self + "/modules/home")
    ];

    modules.home = {
        # desktops.gnome.enable = true;
        
        # editors.neovim.enable = true;
        # editors.vscode.enable = true;

        # fetches.fastfetch.enable = true;

        # nousad.scripts.enable = true;

        # services.solaar.enable = true;

        # shells.zsh.enable = true;

        # terminals.ghostty.enable = true;
    };
}
