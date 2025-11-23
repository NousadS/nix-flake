{
    config,
    lib,
    pkgs,
    ...
}: {
    home.packages = with pkgs.gnomeExtensions; [
        blur-my-shell
    ];

    dconf.settings = {
        "org/gnome/shell".enabled-extensions = [
            "blur-my-shell@aunetx"
        ];

        "org/gnome/shell/extensions/blur-my-shell" = {
            blacklist = "@as []";
            blur = true;
            blur-on-overview = false;
            brightness = "1.0";
            customize = true;
            enable-all = true;
            opacity = "250";
            settings-version = 2;
            sigma = "59";

            # appfolder = {
            #     brightness = 0.6;
            #     sigma = 30;
            # };

            # coverflow-alt-tab = {
            #     pipeline="pipeline_default";
            # };

            # dash-to-dock = {
            #     blur = true;
            #     brightness = 0.6;
            #     override-background = false;
            #     pipeline = "pipeline_default_rounded";
            #     sigma = 30;
            #     static-blur = true;
            #     style-dash-to-dock = 0;
            #     unblur-in-overview = false;
            # };

            # hidetopbar = {
            #     compatibility = false;
            # };

            # lockscreen = {
            #     pipeline = "pipeline_default";
            # };

            # overview = {
            #     pipeline = "pipeline_default";
            #     style-components = 2;
            # };

            # panel = {
            #     brightness = 0.6;
            #     pipeline = "pipeline_default";
            #     sigma = 30;
            #     static-blur = true;
            # };

            # screenshot = {
            #     pipeline = "pipeline_default";
            # };

            # window-list = {
            #     brightness = 0.6;
            #     sigma = 30;
            # };
        };
    };
}
