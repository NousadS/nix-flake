{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "configs";
    name = "ghostty";

    body = {        
        home.file = {
            ".config/ghostty/config".source = self + "/assets/configs/ghostty/config";
        }; 
        
        # stylix.targets = {
        #     ghostty.enable = true;
        # };
    };
}