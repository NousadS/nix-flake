{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    stylix,
    ...
} @ args:
mkModule {
    imports = [
        ./profiles/default.nix
    ];

    programs.vscode = {
        enable = true;
        package = pkgs.vscode;
        mutableExtensionsDir = true;
    };

    stylix.targets.vscode.enable = true;

    home.sessionVariables.VISUAL = "code";
}
