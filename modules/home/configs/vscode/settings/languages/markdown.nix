{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        "[markdown]" = {
            editor.defaultFormatter = "esbenp.prettier-vscode";
        };
        
        markdown.preview.fontFamily = "-apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Noto Sans\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\"";
        markdown-preview-github-styles.darkTheme = "dark_high_contrast";
    };
}