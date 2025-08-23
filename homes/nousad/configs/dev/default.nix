{ config, lib, pkgs, ... }:

{
    home.file = {
        ".nousad".source = ../../../../configs/dev;
    }; 

    home.sessionVariables = {
        PATH = "${config.home.homeDirectory}/.nousad/scripts/:$PATH";
    };
}