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
        inputs.dms.nixosModules.greeter
    ];
    
    programs.dankMaterialShell.greeter = {
        enable = true;
        compositor.name = "niri"; # Or "hyprland" or "sway"
    };
}
