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
        "[json]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };

        "[jsonc]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}
