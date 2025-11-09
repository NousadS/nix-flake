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
                sha256 = "sha256-9aI+1OFolYC2KZ2dls0TCL0XKzRtP1FYzaPsuQvL1ec=";
            }
        ];

    userSettings = {
    };
}
