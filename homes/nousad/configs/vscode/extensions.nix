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
    ];
}