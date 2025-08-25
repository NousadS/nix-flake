{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "configs";
    name = "ghostty";
    body = {
        home.file = {
            ".config/ghostty/config".source = ./../../../../../assets/configs/ghostty/config;
        }; 
        
        # stylix.targets = {
        #     ghostty.enable = true;
        # };
    };
}