{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    programs.zsh.shellAliases = {
        "la" = "eza -la";
        "ll" = "eza -l";
        "lt" = "eza --tree";

        ".." = "cd ..";
    };
}
