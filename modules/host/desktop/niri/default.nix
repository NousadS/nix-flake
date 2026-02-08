{
    config,
    lib,
    pkgs,
    system,
    inputs,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        inputs.niri.nixosModules.niri
    ];

    nixpkgs.overlays = [inputs.niri.overlays.niri];

    programs.niri.enable = true;
    programs.niri.package = pkgs.niri-stable;

    environment.systemPackages = [
        pkgs.wl-clipboard
        pkgs.wayland-utils
        pkgs.libsecret
        pkgs.cage
        pkgs.gamescope
        pkgs.xwayland-satellite-unstable
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-gnome
        pkgs.gnome-keyring
    ];

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [
        pkgs.xdg-desktop-portal-gtk
        pkgs.xdg-desktop-portal-gnome
        pkgs.gnome-keyring
    ];

    systemd.user.services.niri-flake-polkit.enable = false;
}
