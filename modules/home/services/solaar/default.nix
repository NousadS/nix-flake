{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "services";
    name = "solaar";
    body = {
        home.file = {
            ".config/solaar/config.yaml".source = self + "/assets/configs/solaar/config.yaml";
            ".config/solaar/rules.yaml".source = self + "/assets/configs/solaar/rules.yaml";
            
            # ".config/autostart/solaar.desktop".source = self + "/assets/configs/solaar/solaar.desktop";
        };
    };
}