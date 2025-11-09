{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
            bradlc.vscode-tailwindcss
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                publisher = "esdete";
                name = "tailwind-rainbow";
                version = "0.2.1";
                sha256 = "sha256-f0TX+jVakNhFptAkaAy8Fil/YXAX321EhWjbdebGFTM=";
            }
        ];

    userSettings = {
        "[css]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };

        "[scss]" = {
            editor.tabSize = 4;
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
    };
}
