{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
            bierner.markdown-preview-github-styles
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        ];

    userSettings = {
        "[markdown]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };

        markdown.preview.fontFamily = "-apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Noto Sans\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\"";
        markdown-preview-github-styles.darkTheme = "dark_high_contrast";
    };
}
