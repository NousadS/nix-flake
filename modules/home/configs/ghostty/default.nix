{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "configs";
    name = "ghostty";

    body = {        
        home.file = {
            ".config/ghostty/config".source = ./files/config;
        }; 
        
        # stylix.targets = {
        #     ghostty.enable = true;
        # };
    };
}