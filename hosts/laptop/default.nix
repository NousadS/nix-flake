{
    config,
    pkgs,
    ...
}: {
    imports = [
        ./hardware.nix
        ./configuration.nix
        ./disks.nix
        ./nix.nix
        ./home.nix
        ./modules.nix
    ];
}
