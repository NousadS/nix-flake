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
        inputs.dms.homeModules.dankMaterialShell.default
        inputs.dms.homeModules.dankMaterialShell.niri
    ];

    programs.dankMaterialShell = {
        enable = true;

        default.settings = {
            theme = "dark";
            dynamicTheming = true;
            # Add any other settings here
        };

        default.session = {
            # Session state defaults
        };
    };
}
