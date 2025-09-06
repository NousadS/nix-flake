{ config, lib, pkgs, mkModule, stylix, ... }:

mkModule {
    group = "editors";
    name = "micro";

    body = {
        stylix.targets.micro.enable = true;
    };
}