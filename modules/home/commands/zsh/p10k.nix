{
    config,
    lib,
    pkgs,
    ...
} @ args:
{
    home.file.".p10k.zsh".source = ./p10k.zsh;
}
