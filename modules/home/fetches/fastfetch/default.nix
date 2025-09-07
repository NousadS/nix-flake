{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "fetches";
    name = "fastfetch";
    body = {
        home.file = {
            ".config/fastfetch/config.jsonc".source = self + "/assets/configs/fastfetch/config.jsonc";
        }; 
    };
}