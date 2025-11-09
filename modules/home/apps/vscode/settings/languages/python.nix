{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
            charliermarsh.ruff
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                publisher = "ms-python";
                name = "python";
                version = "2025.13.2025090201";
                sha256 = "sha256-Sq/XYi72oDjcGenoswtLuwzsIDwauxueo8HhuPvwWVU==";
            }
            {
                publisher = "ms-python";
                name = "vscode-pylance";
                version = "2025.7.102";
                sha256 = "sha256-Gd8p/XfRpURdwUHfnqlzWsimZfr7ClWDhg1Hqwlrlas=";
            }
            {
                publisher = "jannchie";
                name = "ruff-ignore-explainer";
                version = "1.5.0";
                sha256 = "sha256-+IZXfIS2YPYkRElnZnNw26GCGujX1SZmkS2w4SCZmM8=";
            }
        ];

    userSettings = {
        python = {
            analysis = {
                autoFormatStrings = true;
                autoImportCompletions = true;
                typeCheckingMode = "basic";
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
