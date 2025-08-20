{ config, cfg, lib, pkgs, ... }:

{
    config = lib.mkIf cfg.enable {
        imports = [
            ./extensions.nix
            ./keybinds.nix
            ./settings
        ];

        programs.vscode.enable = true;
    };
}