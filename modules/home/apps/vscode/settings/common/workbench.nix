{
    config,
    lib,
    pkgs,
    ...
}: {
    userSettings.workbench = {
        iconTheme = "material-icon-theme";
        colorTheme = "Stylix";
        startupEditor = "none";
    };
}
