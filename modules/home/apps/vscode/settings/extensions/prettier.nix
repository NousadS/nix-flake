{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions; [
        esbenp.prettier-vscode
    ];

    userSettings = {
        prettier.tabWidth = 4;
    };
}
