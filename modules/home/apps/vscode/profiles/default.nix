{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    programs.vscode.profiles.default = {
        enableUpdateCheck = false;
        enableExtensionUpdateCheck = false;

        extensions = with pkgs.vscode-extensions;
            [
                iliazeus.vscode-ansi
                charliermarsh.ruff
                tamasfe.even-better-toml
                rust-lang.rust-analyzer
                funkyremi.vscode-google-translate
                bradlc.vscode-tailwindcss
                bbenoist.nix
                arrterian.nix-env-selector
                kamadorueda.alejandra
                foxundermoon.shell-format
                foxundermoon.shell-format
                ritwickdey.liveserver
                gleam.gleam
                bierner.markdown-preview-github-styles
                aaron-bond.better-comments
                streetsidesoftware.code-spell-checker
                pkief.material-icon-theme
                svelte.svelte-vscode
                adpyke.codesnap
                leonardssh.vscord
                usernamehw.errorlens
                wmaurer.change-case
                redhat.java

                vscjava.vscode-java-debug
                vadimcn.vscode-lldb
                christian-kohler.path-intellisense
                esbenp.prettier-vscode
                vscjava.vscode-gradle
            ]
            ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
                {
                    publisher = "fwcd";
                    name = "kotlin";
                    version = "0.2.36";
                    sha256 = "sha256-tCpxFWSQZNhiHdJyxSbQ1QakS2jNqWQrA2/grLZklrM=";
                }
                {
                    publisher = "ms-vscode";
                    name = "hexeditor";
                    version = "1.11.1";
                    sha256 = "sha256-RB5YOp30tfMEzGyXpOwPIHzXqZlRGc+pXiJ3foego7Y=";
                }
                {
                    publisher = "ardenivanov";
                    name = "svelte-intellisense";
                    version = "0.7.1";
                    sha256 = "sha256-/AiGMgwCeD9B3y8LxTe6HoIswLuCnLbmwV7fxwfWSLw=";
                }
                {
                    publisher = "sebsojeda";
                    name = "vscode-svx";
                    version = "1.0.0";
                    sha256 = "sha256-5YLeTJrkQsJSjYMmZMDJ0sVvvbhuQCdr2hhHIROb094=";
                }
                {
                    publisher = "qwtel";
                    name = "sqlite-viewer";
                    version = "25.9.0";
                    sha256 = "sha256-CowECUJD3DLE3t7Gs/v/GFMrW7PYjbgB2OEShVF0wWs=";
                }
                {
                    publisher = "Yasuo-Higano";
                    name = "gleam-outliner";
                    version = "0.1.4";
                    sha256 = "sha256-9AB7kTQQSKCMvpE9w/wp6JtITOsT4Let5BuJKCyOwsc=";
                }
                {
                    publisher = "basdp";
                    name = "language-gas-x86";
                    version = "0.0.2";
                    sha256 = "sha256-PbXhOsoR0/5wXuFrzwCcauM1uGgfQoSRTj0gPVVZ4Kg=";
                }
                {
                    publisher = "ms-python";
                    name = "python";
                    version = "2025.13.2025090201";
                    sha256 = "sha256-oxCL1cc6unUW+d0wN4l762oD4DybJFwZxnMPydsphuk=";
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
                {
                    publisher = "esdete";
                    name = "tailwind-rainbow";
                    version = "0.2.1";
                    sha256 = "sha256-f0TX+jVakNhFptAkaAy8Fil/YXAX321EhWjbdebGFTM=";
                }
                {
                    publisher = "ms-vscode";
                    name = "cpptools";
                    version = "1.28.3";
                    sha256 = "sha256-OGYN1euviPvChlTiRzdOV+/XbBUYaLKe3QgiC+6EZwg=";
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
                    sha256 = "sha256-WpNh9A04RlHBurA4V16kWh3njnf9RdlUOEYLJ62sj3Q=";
                }
                {
                    publisher = "jannisx11";
                    name = "batch-rename-extension";
                    version = "0.0.6";
                    sha256 = "sha256-8ulewmU0Ztz4EhW5Ok3XpN/D5gM3LtITVrYF21jSYEw=";
                }
                {
                    publisher = "brunnerh";
                    name = "file-properties-viewer";
                    version = "1.2.0";
                    sha256 = "sha256-SeaQCxQoSqx5hgI26EM6qYdltxJfU6eaizZPbpS7t00=";
                }
                {
                    publisher = "roonie007";
                    name = "hide-files";
                    version = "1.0.3";
                    sha256 = "sha256-twqUwMpTv17XlBK5aZ0RvFdTF01o/cefWtcXs+E93n4=";
                }
                {
                    publisher = "streetsidesoftware";
                    name = "code-spell-checker-russian";
                    version = "2.2.4";
                    sha256 = "sha256-Vn/Vu502A9qPVHfnJ3CZUXcM2knIIG6bJHce0r72Rv0=";
                }
                {
                    publisher = "ms-vscode";
                    name = "hexeditor";
                    version = "1.11.1";
                    sha256 = "sha256-RB5YOp30tfMEzGyXpOwPIHzXqZlRGc+pXiJ3foego7Y=";
                }
                {
                    publisher = "nobuwu";
                    name = "mc-color";
                    version = "3.1.2";
                    sha256 = "sha256-5FxI7+v09KMGBc2iUea6PGTqgfNiy1PVsDoIDvIVjBo=";
                }
                {
                    publisher = "streetsidesoftware";
                    name = "code-spell-checker-german";
                    version = "2.3.4";
                    sha256 = "sha256-zc0cv4AOswvYcC4xJOq2JEPMQ5qTj9Dad5HhxtNETEs=";
                }
                {
                    publisher = "ultram4rine";
                    name = "vscode-choosealicense";
                    version = "0.9.4";
                    sha256 = "sha256-YmZ1Szvcv3E3q8JVNV1OirXFdYI29a4mR3rnhJfUSMM=";
                }
                {
                    publisher = "zeithaste";
                    name = "cursorcharcode";
                    version = "0.2.5";
                    sha256 = "sha256-vrAlY3/s4TtCPlaWAMlZI+FhGHZr4MVu7pkmXJlmWf4=";
                }
                {
                    publisher = "streetsidesoftware";
                    name = "code-spell-checker-latin";
                    version = "1.0.5";
                    sha256 = "sha256-jaZWOhlRCsX2WEfP/nFwH56+8xOwKYs66JA9XuC8S3o=";
                }
                {
                    publisher = "wassim-k";
                    name = "rename-replace-extension";
                    version = "0.1.1";
                    sha256 = "sha256-huNZ6jiwpW468gM9icXbxnuiYQZ7YpUamdLPKrVu2Ls=";
                }
                {
                    publisher = "streetsidesoftware";
                    name = "code-spell-checker-ancient-greek";
                    version = "1.0.5";
                    sha256 = "sha256-nDNRtVJefBFwxvPC3U1p9m93stoy8TfcdFNXl5+aUXA=";
                }
                {
                    publisher = "cstef";
                    name = "kotlin-formatter";
                    version = "0.0.9";
                    sha256 = "sha256-V+abyEzT790sfXvI+GnYcIWiWZ56xpCs/Bw0/JWtLHA=";
                }
            ];

        keybindings = [
            {
                key = "ctrl+/";
                command = "workbench.action.addComment";
                when = "activeCursorHasCommentingRange";
            }
            {
                key = "ctrl+shift+o";
                command = "editor.action.organizeImports";
                when = "textInputFocus && !editorReadonly && supportedCodeAction =~ /(\\s|^)source\\.organizeImports\\b/";
            }
            {
                key = "ctrl+shift+i";
                command = "editor.action.formatDocument";
                when = "editorHasDocumentFormattingProvider && editorTextFocus && !editorReadonly && !inCompositeEditor";
            }
            {
                key = "ctrl+[Backquote]";
                command = "workbench.action.terminal.toggleTerminal";
                when = "terminal.active";
            }
        ];
        userSettings = {
            "[vue]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "Vue.volar";
            };
            files = {
                exclude = {
                    "**/__pycache__" = true;
                    "**/.vscode" = true;
                };
                associations = {
                    "*.json" = "json";
                    "*.jsonc" = "jsonc";
                    "*.s" = "asm-intel-x86-generic";
                };

                autoGuessEncoding = true;
                autoSave = "afterDelay";
            };
            "[svelte]" = {
                editor.defaultFormatter = "svelte.svelte-vscode";
            };

            svelte.enable-ts-plugin = true;
            "[svg]" = {
                editor.defaultFormatter = "jock.svg";
            };

            svg.preview.mode = "svg";
            "[markdown]" = {
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            markdown.preview.fontFamily = "-apple-system, BlinkMacSystemFont, \"Segoe UI\", \"Noto Sans\", Helvetica, Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\"";
            markdown-preview-github-styles.darkTheme = "dark_high_contrast";

            "[nix]" = {
                editor.defaultFormatter = "kamadorueda.alejandra";
                editor.formatOnPaste = false;
                editor.formatOnSave = false;
                editor.formatOnType = false;
            };

            alejandra.program = "ealejandra";
            "[yaml]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            material-icon-theme = {
                folders = {
                    theme = "specific";
                    color = "#616161";
                    customClones = [
                        {
                            "name" = "sudo";
                            "base" = "command";
                            "color" = "green-500";
                            "lightColor" = "green-700";
                            "folderNames" = ["sudo"];
                        }
                        {
                            "name" = "lexer";
                            "base" = "src";
                            "color" = "green-500";
                            "lightColor" = "green-700";
                            "folderNames" = ["lexer"];
                        }
                        {
                            "name" = "blueprints";
                            "base" = "routes";
                            "color" = "blue-500";
                            "lightColor" = "blue-700";
                            "folderNames" = ["blueprint" "blueprints"];
                        }
                        {
                            "name" = "grouper";
                            "base" = "element";
                            "color" = "red-500";
                            "lightColor" = "red-700";
                            "folderNames" = ["grouper"];
                        }
                        {
                            "name" = "parser";
                            "base" = "api";
                            "color" = "light-blue-500";
                            "lightColor" = "light-blue-700";
                            "folderNames" = ["parser"];
                        }
                        {
                            "name" = "compiler";
                            "base" = "core";
                            "color" = "orange-500";
                            "lightColor" = "orange-700";
                            "folderNames" = ["compiler"];
                        }
                        {
                            "name" = "dreambeard";
                            "base" = "linux";
                            "color" = "gray-900";
                            "lightColor" = "gray-700";
                            "folderNames" = [
                                "dreambeard"
                                "dreambeard-cpp"
                                "dreambeard-js"
                                "dreamberd"
                            ];
                        }
                        {
                            "name" = "user";
                            "base" = "admin";
                            "color" = "blue-700";
                            "lightColor" = "blue-700";
                            "folderNames" = ["user" "users"];
                        }
                        {
                            "name" = "labler";
                            "base" = "routes";
                            "color" = "blue-700";
                            "lightColor" = "blue-700";
                            "folderNames" = ["labeler" "labelers"];
                        }
                        {
                            "name" = "check";
                            "base" = "resolver";
                            "color" = "green-500";
                            "lightColor" = "green-500";
                            "folderNames" = [
                                "check"
                                "checks"
                                "checker"
                                "checkers"
                            ];
                        }
                        {
                            "name" = "ids";
                            "base" = "enum";
                            "color" = "green-500";
                            "lightColor" = "green-500";
                            "folderNames" = ["id" "ids"];
                        }
                        {
                            "name" = "tables";
                            "base" = "database";
                            "color" = "green-500";
                            "lightColor" = "green-500";
                            "folderNames" = ["table" "tables"];
                        }
                        {
                            "name" = "storage";
                            "base" = "database";
                            "color" = "green-500";
                            "lightColor" = "green-500";
                            "folderNames" = ["storage"];
                        }
                        {
                            "name" = "desktops";
                            "base" = "desktop";
                            "color" = "green-500";
                            "lightColor" = "green-500";
                            "folderNames" = ["desktops"];
                        }
                    ];
                };
            };
            liveServer.settings = {
                donotShowInfoMsg = true;
                donotVerifyTags = true;
            };
            "[javascript]" = {
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            "[typescript]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            "[typescriptreact]" = {
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };
            "[json]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            "[jsonc]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            "[html]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };
            vscord.status.idle.disconnectOnIdle = true;
            "[css]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };

            "[scss]" = {
                editor.tabSize = 4;
                editor.defaultFormatter = "esbenp.prettier-vscode";
            };
            "[c]" = {
                "editor.defaultFormatter" = "ms-vscode.cpptools";
            };
            "rust-analyzer.check.command" = "clippy";
            "rust-analyzer.cargo.features" = "all";
            "rust-analyzer.procMacro.enable" = true;

            "rust-analyzer.inlayHints.bindingModeHints.enable" = true;
            "rust-analyzer.inlayHints.closureReturnTypeHints.enable" = "always";
            "rust-analyzer.inlayHints.lifetimeElisionHints.enable" = "always";
            "rust-analyzer.inlayHints.typeHints.enable" = true;

            "[rust]" = {
                "editor.formatOnSave" = true;
                "editor.defaultFormatter" = "rust-lang.rust-analyzer";
            };

            "lldb.executable" = "lldb";
            "debug.allowBreakpointsEverywhere" = true;

            "errorLens.enabled" = true;
            "errorLens.fontWeight" = "bold";
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

            "[cpp]" = {
                "editor.defaultFormatter" = "ms-vscode.cpptools";
            };

            "C_Cpp" = {
                clang_format_fallbackStyle = "{ 
                BasedOnStyle: Google, 
                UseTab: Never, 
                IndentWidth: 4, 
                AllowShortFunctionsOnASingleLine: All, 
                AllowShortEnumsOnASingleLine: true, 
                AllowShortIfStatementsOnASingleLine: AllIfsAndElse, 
                AllowShortLoopsOnASingleLine: true, 
                ColumnLimit: 88 
            }";

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
            license = {
                author = "Nousad <nousad.cat@gmail.com>";
                default = "MIT";
            };
            errorLens.enabledDiagnosticLevels = ["error" "warning" "info"];
            cSpell = {
                language = "en,ru";
                diagnosticLevel = "hint";

                userWords = [
                    "aiogram"
                    "Atbash"
                    "blit"
                    "Dantic"
                    "dotenv"
                    "endmacro"
                    "fastapi"
                    "Fira"
                    "getpixe"
                    "nousad"
                    "resb"
                    "SRCALPHA"
                    "Starlette"
                    "templating"
                    "uvicorn"
                    "Weighable"
                    "пентен"
                    "юникодом"
                ];
            };
            editor = {
                fontFamily = "'Fira Code'";
                fontSize = 14;
                fontLigatures = true;
                cursorBlinking = "expand";
                cursorSmoothCaretAnimation = "on";
                cursorStyle = "line-thin";
                selectionClipboard = false;
                autoClosingDelete = "never";
                formatOnSave = true;
                linkedEditing = true;
                gotoLocation.multipleDefinitions = "goto";
                stickyScroll.enabled = false;
                rulers = [88];
            };

            terminal.integrated = {
                fontFamily = "'Fira Code', 'MesloLGS NF'";
                fontSize = 11;
                fontLigatures = true;
                cursorStyle = "underline";
                cursorStyleInactive = "underline";
            };
            keyboard.dispatch = "keyCode";
            terminal = {
                integrated = {
                    defaultProfile.windows = "Command Prompt";
                    defaultProfile.linux = "zsh";
                };

                explorerKind = "external";
                external.linuxExec = "/usr/bin/zsh";
            };
            window.titleBarStyle = "custom";
            workbench = {
                iconTheme = "material-icon-theme";
                colorTheme = "Stylix";
                startupEditor = "none";
            };

            explorer = {
                confirmDragAndDrop = false;
                confirmDelete = true;
                compactFolders = false;
                confirmPasteNative = false;
            };
            prettier.tabWidth = 4;
        };
    };
}
