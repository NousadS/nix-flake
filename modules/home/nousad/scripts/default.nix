{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "nousad";
    name = "scripts";
    body = {
        home.file = {
            ".nousad".source = self + "/assets/configs/dev";
        }; 

        home.sessionPath = [
            "$HOME/.nousad/scripts/"
        ];
    };
}