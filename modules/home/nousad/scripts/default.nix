{ config, lib, pkgs, mkModule, self, ... } @ args:

mkModule {  
    home.file = {
        ".nousad".source = self + "/assets/configs/dev";
    }; 

    home.sessionPath = [
        "$HOME/.nousad/scripts/"
    ];
}