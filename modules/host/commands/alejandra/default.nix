{ config, lib, pkgs, mkModule, inputs, system, ... }:

mkModule {
    group = "commands";
    name = "alejandra";
    body = {
        environment.systemPackages = [
            inputs.alejandra.defaultPackage.${system}
        ];
    };
}

