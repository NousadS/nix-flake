{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions; [
        vadimcn.vscode-lldb
    ];
}
