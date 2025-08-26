{ config, lib, pkgs, mkModule, self, ... }:

mkModule {
    group = "shells";
    name = "zsh";

    imports = [
        ./aliases.nix
        ./p10k.nix
        ./path.nix
        ./rc.nix
    ];

    body = { };
}