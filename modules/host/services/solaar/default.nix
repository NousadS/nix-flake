{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {
    services.solaar = {
        enable = true;
        package = pkgs.solaar;

        window = "hide";
        batteryIcons = "regular";
        extraArgs = "";
    };
}
