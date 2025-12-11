{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    ...
} @ args:
mkModule {
    imports = [
        ./customization.nix

        # ./apps/files.nix

        ./desktop/favapps.nix
        # ./desktop/folders/utilities.nix

        ./extensions/blur-my-shell.nix
        ./extensions/color-picker.nix
        ./extensions/dash-to-dock.nix
        ./extensions/gsconnect.nix
        ./extensions/just-perfection.nix
        ./extensions/open-bar.nix
        ./extensions/pip-on-top.nix
        ./extensions/solaar-extension.nix
        ./extensions/vitals.nix

        ./keybinds/default.nix
    ];

    dconf.enable = true;
}
