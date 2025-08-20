{ config, lib, pkgs, ... }:

{
    programs.vscode.extensions = with pkgs.vscode-extensions; [
        brettm12345.nixfmt-vscode
        ritwickdey.liveserver
        aaron-bond.better-comments
        christian-kohler.path-intellisense
        funkyremi.vscode-google-translate
        ms-vscode.hexeditor
        adpyke.codesnap
        esbenp.prettier-vscode
        wmaurer.change-case
        codezombiech.gitignore
        pkief.material-icon-theme
        leonardssh.vscord
        bierner.markdown-preview-github-styles
        streetsidesoftware.code-spell-checker
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "roonie007";
            name = "hide-files";
            version = "11.0.3";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "jannisx11";
            name = "batch-rename-extension";
            version = "0.0.6";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "zeithaste";
            name = "cursorcharcode";
            version = "0.2.5";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "ultram4rine";
            name = "vscode-choosealicense";
            version = "0.9.4";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "wassim-k";
            name = "rename-replace-extension";
            version = "0.1.1";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-russian";
            version = "2.2.4";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-german";
            version = "2.3.4";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-latin";
            version = "1.0.5";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-ancient-greek";
            version = "1.0.5";
            sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        }
    ];
}