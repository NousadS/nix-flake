{ config, lib, pkgs, ... }:

{
    imports = [ ];

    security.rtkit.enable = true;
}
