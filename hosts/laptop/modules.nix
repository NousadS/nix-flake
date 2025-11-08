{ config, lib, pkgs, self, ... }:

{
    imports = [
        "${self}/modules/host"
    ];

    modules.host = {
        bootloader.systemd.enable = false;
        commands.alejandra.enable = true;
        keyboards.short.enable = false;
        editors.logseq.enable = false;
    };
}
