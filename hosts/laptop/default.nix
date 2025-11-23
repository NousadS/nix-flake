{
    config,
    pkgs,
    ...
}: {
    imports = [
        ./disks/ssd.nix
        ./disks/hdd.nix
        ./disks/swap.nix

        ./hardware.nix

        ./configuration.nix
        ./nix.nix
        ./modules.nix

        ./home.nix
    ];
}
