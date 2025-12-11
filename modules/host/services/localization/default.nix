{
    config,
    lib,
    pkgs,
    mkModule,
    ...
} @ args:
mkModule {
    services.xserver.xkb = {
        layout = "us,ru,de,gr";
        variant = ",,,polytonic";
        options = "grp:win_space_toggle";
    };

    time.timeZone = "Europe/Berlin";

    i18n.defaultLocale = "en_US.UTF-8";

    i18n.extraLocaleSettings = {
        LC_COLLATE = "en_US.UTF-8";
        LC_CTYPE = "en_US.UTF-8";
        LC_MESSAGES = "en_US.UTF-8";
        LC_MONETARY = "de_DE.UTF-8";
        LC_NUMERIC = "de_DE.UTF-8";
        LC_TIME = "en_US.UTF-8";
        LC_PAPER = "de_DE.UTF-8";
        LC_NAME = "de_DE.UTF-8";
        LC_ADDRESS = "de_DE.UTF-8";
        LC_TELEPHONE = "de_DE.UTF-8";
        LC_MEASUREMENT = "de_DE.UTF-8";
        LC_IDENTIFICATION = "de_DE.UTF-8";
    };
}
