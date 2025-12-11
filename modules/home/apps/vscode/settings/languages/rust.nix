{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
            rust-lang.rust-analyzer
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
        ];

    userSettings = {
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
    };
}
