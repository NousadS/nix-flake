{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "configs";
    name = "dev";
    body = {
        home.file = {
            ".nousad".source = self + "/assets/configs/dev";
        }; 

        home.sessionPath = [
            "$HOME/.nousad/scripts/"
        ];
    };
}