{
    config,
    lib,
    pkgs,
    ...
} @ args: {
    programs.zsh.initContent = ''
        ###

        ${builtins.readFile ./rc.zsh}
        
        ###
    '';
}
