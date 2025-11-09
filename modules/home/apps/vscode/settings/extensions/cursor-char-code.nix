{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "zeithaste";
            name = "cursorcharcode";
            version = "0.2.5";
            sha256 = "sha256-vrAlY3/s4TtCPlaWAMlZI+FhGHZr4MVu7pkmXJlmWf4=";
        }
    ];
}
