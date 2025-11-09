{
    profile,
    settings,
    config,
    lib,
    pkgs,
    ...
} @ args: let
    settingsPath = ./settings;

    modules = map (setting: import (settingsPath + "/${setting}.nix") args) settings;

    extensions = lib.concatMap (m: m.extensions or []) modules;
    userSettings = lib.foldl' lib.recursiveUpdate {} (lib.catAttrs "userSettings" modules ++ lib.catAttrs "settings" modules);

    other = lib.foldl' lib.recursiveUpdate {} (map (m: lib.removeAttrs m ["extensions" "settings" "userSettings"]) modules);

    combined =
        other
        // {
            inherit extensions;
            inherit userSettings;
        };
in {
    programs.vscode.profiles.${profile} = combined;
}
