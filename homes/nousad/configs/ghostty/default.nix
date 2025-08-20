{ config, lib, pkgs, ... }:

{
    home.file = {
        ".config/ghostty/config".source = ../../../../configs/ghostty/config;
    }; 
}