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
        "[yaml]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}
