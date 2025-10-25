{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
        ms-vscode.cpptools
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "jeff-hykin";
            name = "better-cpp-syntax";
            version = "1.27.1";
            sha256 = "xxxx";
        }
    ];
    
    userSettings = {
        "[c]" = {
            "editor.defaultFormatter" = "ms-vscode.cpptools";
        };

        "[cpp]" = {
            "editor.defaultFormatter" = "ms-vscode.cpptools";
        };

        "C_Cpp" = {
            clang_format_fallbackStyle = "LLVM";
            clang_format_sortIncludes = true;

            vcFormat.indent.caseContentsWhenBlock = true;
            formatting = "clangFormat";

            default.includePath = [
                "src/"
                "./src"
                "/src"
                "include/"
                "./include"
                "/include"
            ];
        };
    };
}