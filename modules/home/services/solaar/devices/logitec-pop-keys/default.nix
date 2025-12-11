{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    imports = [
        ./config.nix
        ./rules.nix
    ];
}
