{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    boot = {
        plymouth = {
            enable = true;
            theme = lib.mkForce "ibm";
            themePackages = [
                (pkgs.adi1090x-plymouth-themes.override {
                    selected_themes = ["ibm"];
                })
            ];
        };

        # Enable "Silent boot"
        consoleLogLevel = 3;
        initrd.verbose = false;
        kernelParams = [
            "quiet"
            "splash"
            "boot.shell_on_fail"
            "udev.log_priority=3"
            "rd.systemd.show_status=auto"
        ];
    };
    
    stylix.targets.plymouth.enable = true;
}
