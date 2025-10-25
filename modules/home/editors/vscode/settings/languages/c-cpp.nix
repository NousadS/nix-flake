{ config, lib, pkgs, ... }:

{
    extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "ms-vscode";
            name = "cpptools";
            version = "1.28.3";
            sha256 = "sha256-AQ0fBHuk9Q2KbDXleMCo6HvKlKlAlmseHY81T/DldQ4=";
        }
        {
            publisher = "jeff-hykin";
            name = "better-cpp-syntax";
            version = "1.27.1";
            sha256 = "sha256-GO/ooq50KLFsiEuimqTbD/mauQYcD/p2keHYo/6L9gw=";
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