{ config, lib, pkgs, ... } @ args:

{
    imports = import ../mkCategory.nix (args // { path = ./.; category = "home"; });
}
