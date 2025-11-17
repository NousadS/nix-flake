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
        ./aliases.nix
        ./p10k.nix
        ./rc.nix
    ];

    programs.zsh.enable = true;
}
