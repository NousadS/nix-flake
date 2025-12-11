{
    config,
    lib,
    pkgs,
    self,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                publisher = "qwtel";
                name = "sqlite-viewer";
                version = "25.9.0";
                sha256 = "sha256-CowECUJD3DLE3t7Gs/v/GFMrW7PYjbgB2OEShVF0wWs=";
            }
        ];

    userSettings = {
    };
}
