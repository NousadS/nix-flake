{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    imports = [
        ./config.nix
        ./rules.nix
        (lib.mkIf config.dconf.enable (import ./dconf.nix args))
    ];
}
