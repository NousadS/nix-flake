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
        bbenoist.nix
        foxundermoon.shell-format
        ms-python.python
        charliermarsh.ruff
        ms-python.vscode-pylance
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "roonie007";
            name = "hide-files";
            version = "1.0.3";
            sha256 = "sha256-twqUwMpTv17XlBK5aZ0RvFdTF01o/cefWtcXs+E93n4=";
        }
        {
            publisher = "jannisx11";
            name = "batch-rename-extension";
            version = "0.0.6";
            sha256 = "sha256-8ulewmU0Ztz4EhW5Ok3XpN/D5gM3LtITVrYF21jSYEw=";
        }
        {
            publisher = "zeithaste";
            name = "cursorcharcode";
            version = "0.2.5";
            sha256 = "sha256-vrAlY3/s4TtCPlaWAMlZI+FhGHZr4MVu7pkmXJlmWf4=";
        }
        {
            publisher = "ultram4rine";
            name = "vscode-choosealicense";
            version = "0.9.4";
            sha256 = "sha256-YmZ1Szvcv3E3q8JVNV1OirXFdYI29a4mR3rnhJfUSMM=";
        }
        {
            publisher = "wassim-k";
            name = "rename-replace-extension";
            version = "0.1.1";
            sha256 = "sha256-huNZ6jiwpW468gM9icXbxnuiYQZ7YpUamdLPKrVu2Ls=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-russian";
            version = "2.2.4";
            sha256 = "sha256-Vn/Vu502A9qPVHfnJ3CZUXcM2knIIG6bJHce0r72Rv0=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-german";
            version = "2.3.4";
            sha256 = "sha256-zc0cv4AOswvYcC4xJOq2JEPMQ5qTj9Dad5HhxtNETEs=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-latin";
            version = "1.0.5";
            sha256 = "sha256-jaZWOhlRCsX2WEfP/nFwH56+8xOwKYs66JA9XuC8S3o=";
        }
        {
            publisher = "streetsidesoftware";
            name = "code-spell-checker-ancient-greek";
            version = "1.0.5";
            sha256 = "sha256-nDNRtVJefBFwxvPC3U1p9m93stoy8TfcdFNXl5+aUXA=";
        }
    ];
}