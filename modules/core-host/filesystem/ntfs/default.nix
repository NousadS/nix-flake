{ config, lib, pkgs, ... }:

{
    environment.systemPackages = [
        pkgs.ntfs3g
    ];
    
    boot.supportedFilesystems = [ "ntfs" ];
}
