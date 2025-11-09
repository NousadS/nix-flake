{
    config,
    lib,
    pkgs,
    ...
}: {
    imports = [
        ./configuration.nix
        ./modules.nix
    ];
}
