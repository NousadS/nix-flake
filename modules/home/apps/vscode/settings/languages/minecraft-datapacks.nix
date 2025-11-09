{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "ms-vscode";
            name = "hexeditor";
            version = "1.11.1";
            sha256 = "sha256-RB5YOp30tfMEzGyXpOwPIHzXqZlRGc+pXiJ3foego7Y=";
        }
        {
            publisher = "nobuwu";
            name = "mc-color";
            version = "3.1.2";
            sha256 = "sha256-5FxI7+v09KMGBc2iUea6PGTqgfNiy1PVsDoIDvIVjBo=";
        }
    ];
}
