{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    # todo: make this NOT hardcoded

    options.solaar.devices.logitec-pop-keys.enable = lib.mkOption {
        default = true;
        description = "enable Logitec Pop Keys configuration via Solaar";
        type = lib.types.bool;
    };

    config = lib.mkIf config.solaar.devices.logitec-pop-keys.enable {
        imports = [
            ./config.nix
            ./rules.nix
            (lib.mkIf config.dconf.enable ./dconf.nix)
        ];
    };
}
