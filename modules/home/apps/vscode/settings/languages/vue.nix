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
        "[vue]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "Vue.volar";
        };
    };
}
