{ config, lib, pkgs, mkModule, stylix, self, ... }:

mkModule {
    group = "terminals";
    name = "ghostty";

    body = {        
        home.file = {
            ".config/ghostty/config".text = ''
                font-family = "MesloLGS NF"

                cursor-style = bar
                cursor-style-blink = true

                background-opacity = 1.0
                background-blur = 20

                window-padding-x = 2
                window-padding-y = 2

                keybind = f11=toggle_fullscreen

                background = ${config.lib.stylix.colors.base00}
                foreground = ${config.lib.stylix.colors.base07}

                selection-background = ${config.lib.stylix.colors.base03}
                selection-foreground = ${config.lib.stylix.colors.base00}

                cursor-color = ${config.lib.stylix.colors.base05}
                cursor-text = ${config.lib.stylix.colors.base07}

                palette = 0=${config.lib.stylix.colors.base00}
                palette = 1=${config.lib.stylix.colors.base01}
                palette = 2=${config.lib.stylix.colors.base02}
                palette = 3=${config.lib.stylix.colors.base03}
                palette = 4=${config.lib.stylix.colors.base04}
                palette = 5=${config.lib.stylix.colors.base05}
                palette = 6=${config.lib.stylix.colors.base06}
                palette = 7=${config.lib.stylix.colors.base07}
                palette = 8=${config.lib.stylix.colors.base08}
                palette = 9=${config.lib.stylix.colors.base09}
                palette = 10=${config.lib.stylix.colors.base10}
                palette = 11=${config.lib.stylix.colors.base11}
                palette = 12=${config.lib.stylix.colors.base12}
                palette = 13=${config.lib.stylix.colors.base13}
                palette = 14=${config.lib.stylix.colors.base14}
                palette = 15=${config.lib.stylix.colors.base15}
            '';
        }; 
        
        stylix.targets = {
            ghostty.enable = true;
        };
    };
}