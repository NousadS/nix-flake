{ config, lib, pkgs, ... }:

{
    home.stateVersion = "25.05";
    home.username = "nousad";
    home.homeDirectory = "/home/nousad";

    home.sessionVariables = {
        EDITOR = "micro";
        VISUAL = "code";
        TERMINAL = "ghostty";
    };
}