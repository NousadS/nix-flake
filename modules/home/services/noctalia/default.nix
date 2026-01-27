{
    config,
    lib,
    pkgs,
    self,
    inputs,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        inputs.noctalia.homeModules.default
    ];

    programs.noctalia-shell = {
        enable = true;
        settings = {
            settingsVersion = 0;
            bar = {
                position = "top";
                backgroundOpacity = 1;
                monitors = [];
                density = "default";
                showCapsule = true;
                capsuleOpacity = 1;
                floating = false;
                marginVertical = 0.25;
                marginHorizontal = 0.25;
                outerCorners = false;
                exclusive = true;
                widgets = {
                    left = [
                        {
                            id = "Workspace";
                            labelMode = "none";
                            showLabelsOnlyWhenOccupied = false;
                            hideUnoccupied = true;
                            followFocusedScreen = true;
                        }
                    ];
                    center = [
                        {
                            id = "Clock";
                            usePrimaryColor = true;
                            formatHorizontal = "HH:mm MMM dd";
                        }
                        {
                            id = "NotificationHistory";
                            showUnreadBadge = false;
                        }
                        {
                            id = "MediaMini";
                            hideMode = "hidden";
                            hideWhenIdle = false;
                            maxWidth = 500;
                            scrollingMode = "hover";
                            showVisualizer = true;
                            visualizerType = "mirrored";
                        }
                    ];
                    right = [
                        {
                            id = "Tray";
                        }
                        {
                            id = "plugin:privacy-indicator";
                        }
                        {
                            id = "KeepAwake";
                        }
                        {
                            id = "ScreenRecorder";
                        }
                        {
                            id = "Bluetooth";
                            displayMode = "alwaysShow";
                        }
                        {
                            id = "WiFi";
                            displayMode = "alwaysShow";
                        }
                        {
                            id = "Battery";
                            displayMode = "alwaysShow";
                            showPowerProfiles = true;
                            showNoctaliaPerfomance = true;
                        }
                        {
                            id = "ControlCenter";
                            enableColorization = true;
                            colorizeSystemIcon = "primary";
                            icon = "grid-dots";
                        }
                    ];
                };
            };
            general = {
                avatarImage = "";
                dimmerOpacity = 0.6;
                showScreenCorners = false;
                forceBlackScreenCorners = false;
                scaleRatio = 1;
                radiusRatio = 1;
                iRadiusRatio = 1;
                boxRadiusRatio = 1;
                screenRadiusRatio = 1;
                animationSpeed = 0.5;
                animationDisabled = false;
                compactLockScreen = false;
                lockOnSuspend = true;
                showSessionButtonsOnLockScreen = true;
                showHibernateOnLockScreen = false;
                enableShadows = false;
                shadowDirection = "bottom_right";
                shadowOffsetX = 2;
                shadowOffsetY = 3;
                language = "";
                allowPanelsOnScreenWithoutBar = true;
            };
            ui = {
                fontDefault = "Fira Code";
                fontFixed = "Fira Code";
                fontDefaultScale = 1;
                fontFixedScale = 1;
                tooltipsEnabled = true;
                panelBackgroundOpacity = 1;
                panelsAttachedToBar = true;
                settingsPanelMode = "attached";
            };
            location = {
                name = "Frankfurt am Main, Germany";
                weatherEnabled = true;
                weatherShowEffects = true;
                showCalendarEvents = true;
                showCalendarWeather = true;
                analogClockInCalendar = true;
                firstDayOfWeek = 0;
            };
            calendar = {
                cards = [
                    {
                        enabled = true;
                        id = "calendar-header-card";
                    }
                    {
                        enabled = false;
                        id = "calendar-month-card";
                    }
                    {
                        enabled = true;
                        id = "timer-card";
                    }
                    {
                        enabled = true;
                        id = "weather-card";
                    }
                ];
            };
            screenRecorder = {
                directory = "$HOME/Videos";
                frameRate = 60;
                audioCodec = "opus";
                videoCodec = "h264";
                quality = "very_high";
                colorRange = "limited";
                showCursor = true;
                audioSource = "default_output";
                videoSource = "portal";
            };
            wallpaper = {
                enabled = true;
            };
            appLauncher = {
                enableClipboardHistory = true;
                enableClipPreview = true;
                position = "center";
                pinnedExecs = [
                    "google-chrome-stable"
                    "tilix"
                    "code"
                ];
                useApp2Unit = false;
                sortByMostUsed = true;
                terminalCommand = "tilix -e";
                viewMode = "list";
                showCategories = true;
            };
            controlCenter = {
                position = "close_to_bar_button";
                shortcuts = {
                    left = [
                    ];
                    right = [
                        {
                            id = "WiFi";
                        }
                        {
                            id = "Bluetooth";
                        }
                        {
                            id = "ScreenRecorder";
                        }
                        {
                            id = "Notifications";
                        }
                        {
                            id = "PowerProfile";
                        }
                        {
                            id = "KeepAwake";
                        }
                        {
                            id = "NightLight";
                        }
                    ];
                };
                cards = [
                    {
                        enabled = true;
                        id = "profile-card";
                    }
                    {
                        enabled = true;
                        id = "shortcuts-card";
                    }
                    {
                        enabled = true;
                        id = "audio-card";
                    }
                    {
                        enabled = true;
                        id = "weather-card";
                    }
                    {
                        enabled = true;
                        id = "media-sysmon-card";
                    }
                ];
            };
            dock = {
                enabled = false;
            };
            network = {
                wifiEnabled = true;
            };
            sessionMenu = {
                enableCountdown = true;
                countdownDuration = 10000;
                position = "center";
                showHeader = true;
                powerOptions = [
                    {
                        action = "lock";
                        enabled = true;
                    }
                    {
                        action = "suspend";
                        enabled = true;
                    }
                    {
                        action = "hibernate";
                        enabled = true;
                    }
                    {
                        action = "reboot";
                        enabled = true;
                    }
                    {
                        action = "logout";
                        enabled = true;
                    }
                    {
                        action = "shutdown";
                        enabled = true;
                    }
                ];
            };
            notifications = {
                enabled = true;
                monitors = [];
                location = "top_right";
                overlayLayer = true;
                backgroundOpacity = 1;
                respectExpireTimeout = false;
                lowUrgencyDuration = 1;
                normalUrgencyDuration = 3;
                criticalUrgencyDuration = 15;
                enableKeyboardLayoutToast = true;
                sounds = {
                    enabled = true;
                    volume = 0.5;
                    separateSounds = false;
                };
            };
            osd = {
                enabled = true;
                location = "top_right";
                autoHideMs = 2000;
                overlayLayer = true;
                backgroundOpacity = 1;
                enabledTypes = [
                    0
                    1
                    2
                ];
                monitors = [];
            };
            audio = {
                volumeStep = 5;
                volumeOverdrive = false;
                cavaFrameRate = 30;
                visualizerType = "linear";
                visualizerQuality = "high";
                mprisBlacklist = [];
                preferredPlayer = "";
                externalMixer = "pwvucontrol || pavucontrol";
            };
            brightness = {
                brightnessStep = 5;
                enforceMinimum = true;
                enableDdcSupport = false;
            };
            colorSchemes = {
                useWallpaperColors = true;
                predefinedScheme = "Gruvbox";
                matugenSchemeType = "scheme-neutral";
                darkMode = true;
                generateTemplatesForPredefined = true;
                manualSunrise = "06:30";
                manualSunset = "18:30";
                schedulingMode = "off";
            };
            templates = {
                gtk = true;
                qt = true;
                fuzzel = true;
                discord = false;
                code = false;
                telegram = true;
                niri = true;
                enableUserTemplates = true;
            };
            nightLight = {
                enabled = false;
                forced = false;
                autoSchedule = true;
                nightTemp = "4000";
                dayTemp = "6500";
                manualSunrise = "06:30";
                manualSunset = "18:30";
            };
        };
    };

    programs.niri.settings.binds = {
        "Mod+R" = {
            action.spawn-sh = "noctalia-shell ipc call launcher toggle";
        };
        "Mod+C" = {
            action.spawn-sh = "noctalia-shell ipc call launcher clipboard";
        };
        "Mod+Period" = {
            action.spawn-sh = "noctalia-shell ipc call launcher emoji";
        };
        "Mod+L" = {
            action.spawn-sh = "noctalia-shell ipc call lockScreen lock";
        };
    };
}
