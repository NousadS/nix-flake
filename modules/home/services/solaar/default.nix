{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    ...
} @ args:
mkModule {
    imports = [
        ./devices/logitec-pop-keys
    ];

    # home.file.".config/autostart/solaar.desktop".text = ''
    #     [Desktop Entry]
    #     Type=Application
    #     Exec=solaar -w hide
    #     Hidden=false
    #     NoDisplay=false
    #     X-GNOME-Autostart-enabled=true
    #     Name=Solaar
    #     Comment=Start Solaar in the background (tray icon)
    # '';
}
