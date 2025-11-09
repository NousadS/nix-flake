{
    config,
    lib,
    pkgs,
    ...
}: {
    imports = [./var.nix];

    config = {
        system.activationScripts.var = config.system.build.varActivationCommands;
    };
}
