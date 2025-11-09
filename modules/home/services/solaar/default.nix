{ config, lib, pkgs, mkModule, self, ... } @ args:

mkModule {  
    home.file = {
        ".config/solaar/config.yaml".source = self + "/assets/solaar/config.yaml";
        ".config/solaar/rules.yaml".source = self + "/assets/solaar/rules.yaml";
        
        # ".config/autostart/solaar.desktop".source = self + "/assets/solaar/solaar.desktop";
    };
}