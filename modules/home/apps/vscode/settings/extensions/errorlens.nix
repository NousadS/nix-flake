{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions; [
        usernamehw.errorlens
    ];

    userSettings = {
        errorLens.enabledDiagnosticLevels = ["error" "warning" "info"];
    };
}
