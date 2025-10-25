{ config, lib, pkgs, ... } @ args:

{
    # Bootloader

    boot.loader.systemd-boot.enable = lib.mkDefault true;
    boot.loader.efi.canTouchEfiVariables = lib.mkDefault true;

    # Audio

    services.pulseaudio.enable = lib.mkDefault false;
    
    services.pipewire = lib.mkDefault {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
        jack.enable = true;
    };

    # Network

    networking.networkmanager.enable = lib.mkDefault true;

    # User

    users.users.nousad = lib.mkDefault {
        isNormalUser = true;
        description = "nousad";
        extraGroups = [
            "networkmanager"
            "wheel"
            "input"
            "scanner"
            "lp" 
        ];
        packages = [ ];
    };
}
