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
        inputs.noctalia.nixosModules.default
    ];

    services.noctalia-shell = {
        enable = true;
        target = "graphical-session.target";
    };
}
