{ config, lib, pkgs, stylix, ... }:

{
    stylix.polarity = "dark";

    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-soft.yaml";
    # stylix.base16Scheme = 
    #     if config.modules.host.themes.default.theme == null
    #     then "${pkgs.base16-schemes}/share/themes/eris.yaml"
    #     else "${pkgs.base16-schemes}/share/themes/" + config.modules.host.themes.default.theme + ".yaml";

    stylix.base16Overrides = {
        base05 = config.lib.stylix.colors.base05;
        base03 = config.lib.stylix.colors.base05;
    };
}

