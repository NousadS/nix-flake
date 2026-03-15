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
    settings = {
      editor = {
        cursorline = true;
        color-modes = true;
        auto-pairs = false;
        true-color = true;
        mouse = true;
        scrolloff = 10;
        bufferline = "multiple";
        inline-diagnostics.cursor-line = "hint";
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
        cursor-shape = {
          normal = "underline";
          insert = "block";
          select = "bar";
        };
      };
    };
    languages.language = [
      {
        name = "nix";
        file-types = [ "nix" ];
        indent = {
          tab-width = 2;
          unit = "  ";
        };
        formatter.command = lib.getExe pkgs.nixfmt-rfc-style;
        language-servers = [ "nil" ];
        auto-format = true;
      }
    ];
  };
}
