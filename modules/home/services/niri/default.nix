{
    config,
    lib,
    pkgs,
    system,
    inputs,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        # inputs.niri.homeModules.niri
    ];

    programs.niri.settings = {
        prefer-no-csd = true;

        binds = {
            "Mod+T" = {
                action.spawn = "kitty";
            };
            "Mod+M" = {
                action.quit = {};
            };

            "Ctrl+Mod+Down" = {
                action.focus-window-or-workspace-down = {};
            };
            "Ctrl+Mod+Up" = {
                action.focus-window-or-workspace-up = {};
            };
            "Ctrl+Mod+Left" = {
                action.focus-column-left = {};
            };
            "Ctrl+Mod+Right" = {
                action.focus-column-right = {};
            };

            "Mod+Left" = {
                action.swap-window-left = {};
            };
            "Mod+Right" = {
                action.swap-window-right = {};
            };
            "Mod+Down" = {
                action.swap-window-left = {};
            };
            "Mod+Up" = {
                action.swap-window-right = {};
            };

            "F11" = {
                action.fullscreen-window = {};
            };
            "F12" = {
                action.toggle-windowed-fullscreen = {};
            };

            "Ctrl+Shift+S" = {
                action.screenshot = {};
            };

            "Shift+Mod+Left" = {
                action.set-column-width = "-10%";
            };
            "Shift+Mod+Right" = {
                action.set-column-width = "+10%";
            };
            "Shift+Mod+Up" = {
                action.set-window-height = "-10%";
            };
            "Shift+Mod+Down" = {
                action.set-window-height = "+10%";
            };

            "Mod+X" = {
                action.toggle-overview = {};
            };
            "Mod+W" = {
                action.close-window = {};
            };
            "Shift+Mod+Return" = {
                action.maximize-column = {};
            };
            "Ctrl+Mod+Return" = {
                action.toggle-window-floating = {};
            };

            "Mod+Alt+Left" = {
                action.spawn = ["niri" "msg" "action" "move-floating-window" "-x" "-50" "-y" "+0"];
            };
            "Mod+Alt+Right" = {
                action.spawn = ["niri" "msg" "action" "move-floating-window" "-x" "+50" "-y" "+0"];
            };
            "Mod+Alt+Up" = {
                action.spawn = ["niri" "msg" "action" "move-floating-window" "-x" "+0" "-y" "-50"];
            };
            "Mod+Alt+Down" = {
                action.spawn = ["niri" "msg" "action" "move-floating-window" "-x" "+0" "-y" "+50"];
            };
            "Mod+Alt+Return" = {
                action.spawn = ["niri" "msg" "action" "move-floating-window" "-x" "16" "-y" "13"];
            };
        };

        animations = {
            enable = true;
            slowdown = 1.0;

            config-notification-open-close = {
                enable = true;
                kind.spring = {
                    damping-ratio = 0.6;
                    stiffness = 1000;
                    epsilon = 0.001;
                };
            };

            # exit-confirmation-open-close = {
            #     enable = true;
            #     kind = {};
            # };

            horizontal-view-movement = {
                enable = true;
                kind.spring = {
                    damping-ratio = 1.0;
                    stiffness = 800;
                    epsilon = 0.0001;
                };
            };

            # overview-open-close = {
            #     enable = true;
            #     kind = {};
            # };

            # screenshot-ui-open = {
            #     enable = true;
            #     kind = {};
            # };

            # window-close = {
            #     enable = true;
            #     kind = {};
            # };

            # window-movement = {
            #     enable = true;
            #     kind = {};
            # };

            # window-open = {
            #     enable = true;
            #     kind = {};
            # };

            # window-resize = {
            #     enable = true;
            #     kind = {};
            # };

            # workspace-switch = {
            #     enable = true;
            #     kind = {};
            # };
        };

        window-rules = [
            {
                matches = [];

                geometry-corner-radius = {
                    bottom-left = 12.0;
                    bottom-right = 12.0;
                    top-left = 12.0;
                    top-right = 12.0;
                };
                clip-to-geometry = true;

                border = {
                    enable = true;
                    width = 3;

                    active = {color = config.lib.stylix.colors.withHashtag.base0B;};
                    # inactive = {color="${config.lib.stylix.base0B}";};
                    inactive = {color = "#909149";};
                    urgent = {color = config.lib.stylix.colors.withHashtag.base08;};
                };
            }
        ];
    };
}
