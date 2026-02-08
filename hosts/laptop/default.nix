{
    config,
    pkgs,
    lib,
    self,
    # system,
    # inputs,
    # specialArgs,
    # options,
    # modulesPath,
    # _class,
    # _prefix,
    ...
}@ args: {
    imports = [
        ./hardware/graphics.nix
        ./hardware/hardware.nix
        ./hardware/hdd.nix
        ./hardware/ssd.nix
        ./hardware/swap.nix

        ./system/environment.nix
        ./system/meta.nix
        
        #

        (import "${self}/lib/configurations/mkHome.nix" args "nousad")
    ];

    modules.host = {
        system.systemd.enable = false;
        system.grub.enable = true;
    };
}