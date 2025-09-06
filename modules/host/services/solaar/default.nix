{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "services";
    name = "solaar";
    body = {
        services.solaar = {
            enable = true;
            package = pkgs.solaar;

            window = "hide";
            batteryIcons = "regular";
            extraArgs = "";
        };
    };
}
