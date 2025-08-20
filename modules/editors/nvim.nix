{ config, lib, pkgs, ... }:

let
    cfg = config.modules.editors.nvim;
in {
    options = {
        modules.editors.nvim.enable = lib.mkEnableOption "enables editors.nvim";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.neovim
        ];
    };  
}
