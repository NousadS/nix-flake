{ config, lib, pkgs, ... } @ args:

let
    settings = [
        "common/global"

        "common/associations"
        "common/cursors"
        "common/editor"
        "common/explorer"
        "common/files"
        "common/fonts"
        "common/terminal"
        "common/window"
        "common/workbench"

        "keybinds/comment"
        "keybinds/formatting"
        "keybinds/terminal"

        "extensions/ansi"
        "extensions/better-comments"
        "extensions/c-spell"
        "extensions/change-case"
        "extensions/choose-a-license"
        "extensions/codesnap"
        "extensions/cursor-char-code"
        "extensions/file-properties"
        "extensions/google-translate"
        "extensions/hide-files"
        "extensions/material-icon-theme"
        "extensions/path-intellisense"
        "extensions/prettier"
        "extensions/rename-replace"
        "extensions/vscord"

        "languages/css"
        "languages/html"
        "languages/js-ts"
        "languages/json"
        "languages/markdown"
        "languages/svelte"
        "languages/svg"
        "languages/toml"
        "languages/yaml"
    ];

    mkProfile = import ../mkProfile.nix;
in mkProfile (args // { profile = "svelte"; inherit settings;  })