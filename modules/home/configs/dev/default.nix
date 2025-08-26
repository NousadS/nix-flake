{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "configs";
    name = "dev";
    body = {
        home.file = {
            ".nousad".source = self + "/assets/configs/dev";
        }; 

        home.sessionVariables = {
            PATH = "${config.home.homeDirectory}/.nousad/scripts/:$PATH";
        };
    };
}