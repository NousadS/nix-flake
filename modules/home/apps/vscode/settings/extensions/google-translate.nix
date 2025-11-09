{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions; [
        funkyremi.vscode-google-translate
    ];
}
