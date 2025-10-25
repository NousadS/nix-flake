{ config, lib, pkgs, mkModule, inputs, system, ... } @ args:

mkModule {
    environment.systemPackages = [
        inputs.alejandra.defaultPackage.${system}
    ];
}

