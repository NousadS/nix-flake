{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "configs";
    name = "dev";
    body = {
        home.file = {
            ".nousad".source = ./../../../../../assets/configs/dev;
        }; 

        home.sessionVariables = {
            PATH = "${config.home.homeDirectory}/.nousad/scripts/:$PATH";
        };
    };
}