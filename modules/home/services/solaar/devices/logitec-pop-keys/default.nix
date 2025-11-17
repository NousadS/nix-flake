{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    options.solaar.devices.logitec-pop-keys.enable = lib.mkOption {
        default = true;
        description = "enable ${name}";
        type = lib.types.bool;
    };

    imports = lib.mkIf modules.solaar.devices.logitec-pop-keys.enable [ # todo: make this NOT hardcoded
        ./config.nix
        ./rules.nix
        (lib.mkIf dconf.enable ./dconf.nix)
    ];
}
