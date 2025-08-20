{ config, lib, pkgs, ... }:

let
    cfg = config.editors.nvim;
in {
    options = {
        editors.nvim.enable = lib.mkEnableOption "enables editors.nvim";
    };
    
    config = lib.mkIf cfg.enable {
        environment.systemPackages = [
            pkgs.neovim
        ];
    };  
}
