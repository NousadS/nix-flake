{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
            gleam.gleam
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                publisher = "Yasuo-Higano";
                name = "gleam-outliner";
                version = "0.1.4";
                sha256 = "sha256-9AB7kTQQSKCMvpE9w/wp6JtITOsT4Let5BuJKCyOwsc=";
            }
        ];

    userSettings = {
    };
}
