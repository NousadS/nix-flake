{ config, lib, pkgs, ... }:

{
    extensions = pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        {
            publisher = "ms-vscode";
            name = "cpptools";
            version = "1.29.0";
            sha256 = "sha256-AQ0fBHuk9Q2KbDXleMCo6HvKlKlAlmseHY81T/DldQ4=";
        }
        {
            publisher = "jeff-hykin";
            name = "better-cpp-syntax";
            version = "1.27.1";
            sha256 = "sha256-GO/ooq50KLFsiEuimqTbD/mauQYcD/p2keHYo/6L9gw=";
        }
        {
            publisher = "guyutongxue";
            name = "cpp-reference";
            version = "0.2.5";
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
            clang_format_fallbackStyle = "{ BasedOnStyle: Google, UseTab: Never, IndentWidth: 4, AllowShortFunctionsOnASingleLine: All, AllowShortEnumsOnASingleLine: true, AllowShortIfStatementsOnASingleLine: AllIfsAndElse, AllowShortLoopsOnASingleLine: true, ColumnLimit: 88 }";
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