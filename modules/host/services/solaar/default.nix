{
    config,
    lib,
    pkgs,
    inputs,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        inputs.solaar.nixosModules.default
    ];

    services.solaar = {
        enable = true;
        package = pkgs.solaar;

        window = "hide";
        batteryIcons = "regular";
        extraArgs = "";
    };
}
