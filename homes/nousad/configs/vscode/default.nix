{ config, lib, pkgs, ... }:

let
    cfg = config.editors.vscode;
in {
    config = lib.mkIf cfg.enable {
        imports = [
            ./extensions.nix
            ./keybinds.nix
            ./settings
        ];

        programs.vscode.enable = true;
    };
}