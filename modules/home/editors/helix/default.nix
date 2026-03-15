{
  config,
  lib,
  pkgs,
  mkModule,
  ...
}@args:
mkModule {
  programs.helix = {
    enable = true;

    # LSPs + formatters installed into the helix environment
    extraPackages = with pkgs; [
      # Nix
      nil
      nixfmt-rfc-style
      # Python
      pyright
      ruff
      # Svelte / Web
      nodePackages.svelte-language-server
      nodePackages.typescript-language-server
      nodePackages.vscode-langservers-extracted # html, css, json, eslint
      nodePackages.prettier
      # Java
      jdt-language-server
      # C / C++
      clang-tools # clangd + clang-format
      # Rust
      rust-analyzer
    ];

    # ─── Editor settings (VSCode-like) ────────────────────────────────────────
    settings = {
      theme = "dark_plus"; # VSCode Dark+ built-in clone

      editor = {
        line-number = "absolute"; # VSCode default (not relative)
        cursorline = true;
        color-modes = true;
        true-color = true;
        mouse = true;
        scrolloff = 8;
        bufferline = "multiple";
        completion-replace = true; # replace word under cursor on accept

        # VSCode-style cursor: block normally, thin bar while typing
        cursor-shape = {
          normal = "block";
          insert = "bar";
          select = "underline";
        };

        # Auto-pairs like VSCode
        auto-pairs = true;

        # Indent guides (VSCode has these on by default)
        indent-guides = {
          render = true;
          character = "│";
          skip-levels = 1;
        };

        # Auto-save on focus loss (VSCode "onFocusChange")
        auto-save = {
          focus-lost = true;
          after-delay = {
            enable = true;
            timeout = 3000;
          };
        };

        # Inlay hints + LSP messages visible in status bar
        lsp = {
          display-inlay-hints = true;
          display-messages = true;
        };

        inline-diagnostics.cursor-line = "hint";

        # Show dotfiles (VSCode shows them by default)
        file-picker.hidden = false;

        # Soft-wrap off — VSCode default
        soft-wrap.enable = false;

        statusline = {
          left = [
            "mode"
            "spinner"
            "version-control"
          ];
          center = [
            "read-only-indicator"
            "file-name"
            "position"
          ];
          right = [
            "diagnostics"
            "selections"
            "file-encoding"
            "file-line-ending"
            "file-type"
          ];
          separator = "|";
          mode = {
            normal = "NORMAL";
            insert = "INSERT";
            select = "SELECT";
          };
        };
      };
    };

    # ─── Language "profiles" ──────────────────────────────────────────────────
    # Helix has no profiles UI like VSCode — per-language blocks are the equivalent.
    languages = {

      # LSP server definitions (commands + init config)
      language-server = {

        nil = {
          command = lib.getExe pkgs.nil;
        };

        pyright = {
          command = "${pkgs.pyright}/bin/pyright-langserver";
          args = [ "--stdio" ];
        };

        ruff = {
          command = lib.getExe pkgs.ruff;
          args = [ "server" ];
        };

        svelte = {
          command = "${pkgs.nodePackages.svelte-language-server}/bin/svelteserver";
          args = [ "--stdio" ];
        };

        typescript-language-server = {
          command = "${pkgs.nodePackages.typescript-language-server}/bin/typescript-language-server";
          args = [ "--stdio" ];
        };

        vscode-html = {
          command = "${pkgs.nodePackages.vscode-langservers-extracted}/bin/vscode-html-language-server";
          args = [ "--stdio" ];
        };

        vscode-css = {
          command = "${pkgs.nodePackages.vscode-langservers-extracted}/bin/vscode-css-language-server";
          args = [ "--stdio" ];
        };

        vscode-json = {
          command = "${pkgs.nodePackages.vscode-langservers-extracted}/bin/vscode-json-language-server";
          args = [ "--stdio" ];
        };

        jdtls = {
          command = "${pkgs.jdt-language-server}/bin/jdt-language-server";
          args = [
            "-configuration"
            "$HOME/.cache/jdtls/config"
            "-data"
            "$HOME/.cache/jdtls/workspace"
          ];
        };

        clangd = {
          command = "${pkgs.clang-tools}/bin/clangd";
          args = [
            "--background-index"
            "--clang-tidy"
            "--completion-style=detailed"
          ];
        };

        rust-analyzer = {
          command = lib.getExe pkgs.rust-analyzer;
          config = {
            # Use clippy on save (like the VSCode rust-analyzer extension default)
            check.command = "clippy";
            inlayHints = {
              bindingModeHints.enable = true;
              closureReturnTypeHints.enable = "always";
              discriminantHints.enable = "always";
              expressionAdjustmentHints.enable = "always";
              lifetimeElisionHints.enable = "skip_trivial";
              typeHints.enable = true;
            };
          };
        };
      };

      language = [

        # ── Nix ───────────────────────────────────────────────────────────────
        {
          name = "nix";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "nil" ];
          formatter.command = lib.getExe pkgs.nixfmt-rfc-style;
          auto-format = true;
        }

        # ── Python ────────────────────────────────────────────────────────────
        {
          name = "python";
          indent = {
            tab-width = 4;
            unit = "    ";
          };
          language-servers = [
            "pyright"
            "ruff"
          ];
          formatter = {
            command = lib.getExe pkgs.ruff;
            args = [
              "format"
              "--stdin-filename"
              "%"
              "-"
            ];
          };
          auto-format = true;
        }

        # ── Svelte / Web ──────────────────────────────────────────────────────
        {
          name = "svelte";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [
            "svelte"
            "typescript-language-server"
          ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "svelte"
            ];
          };
          auto-format = true;
        }
        {
          name = "typescript";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "typescript-language-server" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "typescript"
            ];
          };
          auto-format = true;
        }
        {
          name = "tsx";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "typescript-language-server" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "babel-ts"
            ];
          };
          auto-format = true;
        }
        {
          name = "javascript";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "typescript-language-server" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "babel"
            ];
          };
          auto-format = true;
        }
        {
          name = "html";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "vscode-html" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "html"
            ];
          };
          auto-format = true;
        }
        {
          name = "css";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "vscode-css" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "css"
            ];
          };
          auto-format = true;
        }
        {
          name = "scss";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "vscode-css" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "scss"
            ];
          };
          auto-format = true;
        }
        {
          name = "json";
          indent = {
            tab-width = 2;
            unit = "  ";
          };
          language-servers = [ "vscode-json" ];
          formatter = {
            command = lib.getExe pkgs.nodePackages.prettier;
            args = [
              "--parser"
              "json"
            ];
          };
          auto-format = true;
        }

        # ── Java ──────────────────────────────────────────────────────────────
        {
          name = "java";
          indent = {
            tab-width = 4;
            unit = "    ";
          };
          language-servers = [ "jdtls" ];
          auto-format = true;
        }

        # ── C ─────────────────────────────────────────────────────────────────
        {
          name = "c";
          indent = {
            tab-width = 4;
            unit = "    ";
          };
          language-servers = [ "clangd" ];
          formatter = {
            command = "${pkgs.clang-tools}/bin/clang-format";
            args = [
              "--assume-filename"
              "%.c"
            ];
          };
          auto-format = true;
        }

        # ── C++ ───────────────────────────────────────────────────────────────
        {
          name = "cpp";
          indent = {
            tab-width = 4;
            unit = "    ";
          };
          language-servers = [ "clangd" ];
          formatter = {
            command = "${pkgs.clang-tools}/bin/clang-format";
            args = [
              "--assume-filename"
              "%.cpp"
            ];
          };
          auto-format = true;
        }

        # ── Rust ──────────────────────────────────────────────────────────────
        {
          name = "rust";
          indent = {
            tab-width = 4;
            unit = "    ";
          };
          language-servers = [ "rust-analyzer" ];
          auto-format = true;
          # rustfmt is invoked by rust-analyzer automatically on format
        }

      ];
    };
  };
}
