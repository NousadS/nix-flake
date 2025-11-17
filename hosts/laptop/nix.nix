{
    config,
    pkgs,
    ...
}: {
    nix.settings.experimental-features = ["nix-command" "flakes"];

    nix.optimise = {
        automatic = true;
        dates = ["16:00"];
    };

    nix.gc = {
        automatic = true;
        dates = "weekly";
        options = "--delete-older-than 30d";
    };
}
