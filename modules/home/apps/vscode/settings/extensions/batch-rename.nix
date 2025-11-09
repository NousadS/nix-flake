{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "jannisx11";
            name = "batch-rename-extension";
            version = "0.0.6";
            sha256 = "sha256-8ulewmU0Ztz4EhW5Ok3XpN/D5gM3LtITVrYF21jSYEw=";
        }
    ];
}
