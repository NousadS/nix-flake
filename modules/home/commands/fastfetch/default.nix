{ config, lib, pkgs, mkModule, self, ... } @ args:

mkModule {  
    home.file.".config/fastfetch/config.jsonc".source = self + "/assets/fastfetch/config.jsonc";
}