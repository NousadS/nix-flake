{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        ];

    userSettings = {
        "[svg]" = {
            editor.defaultFormatter = "jock.svg";
        };

        svg.preview.mode = "svg";
    };
}
