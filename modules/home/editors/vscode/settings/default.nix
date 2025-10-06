{ config, lib, pkgs, ... }:

{
    imports = [
        ./editor.nix
        ./explorer.nix
        ./files.nix
        ./terminal.nix
        ./window.nix
        ./workbench.nix

        ./extensions/c-spell.nix
        ./extensions/choose-a-license.nix
        ./extensions/live-server.nix
        ./extensions/material-icon-theme.nix
        ./extensions/prettier.nix
        ./extensions/vscord.nix

        ./languages/c-cpp.nix
        ./languages/css.nix
        ./languages/html.nix
        ./languages/js-ts.nix
        ./languages/json.nix
        ./languages/markdown.nix
        ./languages/nix.nix
        ./languages/python.nix
        ./languages/svelte.nix
        ./languages/svg.nix
        ./languages/vue.nix
    ];

    programs.vscode.userSettings = {
        git.openRepositoryInParentFolders = "never";
        extensions.ignoreRecommendations = true;
        vscodeGoogleTranslate.preferredLanguage = "English";
        colorHelper.disableTransparent = true;
    };
}