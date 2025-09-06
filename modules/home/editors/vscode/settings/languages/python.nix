{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        python = {
            analysis = {
                autoFormatStrings = true;
                autoImportCompletions = true;
                typeCheckingMode = "strict";
                autoSearchPaths = true;
            };

            languageServer = "Pylance";
            defaultInterpreterPath = "/usr/bin/python";
        };

        "[python]" = {
            editor.formatOnSave = true;
            editor.defaultFormatter = "charliermarsh.ruff";
            editor.semanticHighlighting.enabled = true;
        };

        ruff = {
            organizeImports = true;
            exclude = [ ];

            lint.ignore = [
                "F401"
                "F821"
                "E743"
                "E741"
            ];
        };

        mypy-type-checker.args = [
            "--check-untyped-defs"
        ];
    };
}