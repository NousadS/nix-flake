{
    config,
    lib,
    pkgs,
    ...
} @ args:
{
    home.file.".zshrc".source = ./rc.zsh;
}
