{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions; [
        iliazeus.vscode-ansi
    ];
}
