{ config, lib, pkgs, self, ... }:

{
    programs.zsh.initContent = lib.mkOrder 1600 ''
        export PATH="$HOME/.nousad/scripts:$PATH"
    '';
}