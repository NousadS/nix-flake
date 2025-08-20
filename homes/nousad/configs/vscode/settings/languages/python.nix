{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        python = {
            analysis = {
                autoFormatStrings = true;
                autoImportCompletions = true;

                diagnosticSeverityOverrides = {
                    "reportUndefinedVariable" = "none";
                };
            };

            languageServer = "Pylance";
            "python.defaultInterpreterPath = "/usr/bin/python";
        };

        "[python]" = {
            "editor.formatOnSave" = true;
            "editor.defaultFormatter" = "charliermarsh.ruff";
        };

        ruff = {
            organizeImports = true;
            exclude = [];

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