{ config, lib, pkgs, ... }:

{
    programs.vscode.extensions = with pkgs.vscode-extensions; [
        brettm12345.nixfmt-vscode
        zhuangtongfa.material-theme
        github.github-vscode-theme
        # roonie007.hide-files
        # jannisx11.batch-rename-extension
        # ultram4rine.vscode-choosealicense
        # ritwickdey.liveserver
        # zeithaste.cursorcharcode
        # aaron-bond.better-comments
        # christian-kohler.path-intellisense
        # funkyremi.vscode-google-translate
        # johnpapa.vscode-peacock
        # ms-vscode.hexeditor
        # monish.regexsnippets
        # adpyke.codesnap
        # andreacombette.smoothburn
        # esbenp.prettier-vscode
        # wmaurer.change-case
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            name = "beardedtheme";
            publisher = "beardedbear";
            version = "10.1.0";
            sha256 = "sha256-7MkvLEadzgB7af01lYibEOqHn9bvzlpgMTEiiQBlEzA=";
        }
        # {
        #     name = "cpptools-themes";
        #     publisher = "ms-vscode";
        #     version = "10.1.0";
        #     sha256 = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";
        # }
    ];
}