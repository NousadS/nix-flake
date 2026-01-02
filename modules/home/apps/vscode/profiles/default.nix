{
    config,
    lib,
    pkgs,
    ...
} @ args: let
    settings = [
        "common/global"

        "common/associations"
        "common/cursors"
        "common/editor"
        "common/explorer"
        "common/files"
        "common/fonts"
        "common/other"
        "common/terminal"
        "common/window"
        "common/workbench"

        "keybinds/comment"
        "keybinds/formatting"
        "keybinds/terminal"

        "extensions/ansi"
        "extensions/batch-rename"
        "extensions/better-comments"
        "extensions/c-spell"
        "extensions/change-case"
        "extensions/choose-a-license"
        "extensions/codesnap"
        "extensions/cursor-char-code"
        "extensions/errorlens"
        "extensions/file-properties"
        "extensions/google-translate"
        "extensions/hide-files"
        "extensions/lldb"
        "extensions/material-icon-theme"
        "extensions/path-intellisense"
        "extensions/prettier"
        "extensions/rename-replace"
        "extensions/vscord"

        "languages/binary"
        "languages/c-cpp"
        "languages/css"
        "languages/gleam"
        "languages/html"
        "languages/js-ts"
        "languages/json"
        "languages/markdown"
        "languages/minecraft-datapacks"
        "languages/nix"
        "languages/python"
        "languages/rust"
        "languages/shell"
        "languages/sql"
        "languages/svelte"
        "languages/svg"
        "languages/toml"
        "languages/vue"
    ];

    mkProfile = import ../mkProfile.nix;
in
    mkProfile (args
    // {
        profile = "default";
        inherit settings;
    })
