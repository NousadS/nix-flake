{ config, lib, pkgs, mkModule, ... }:

mkModule {
    group = "editors";
    name = "ghidra";
    body = { 
        environment.systemPackages = [
            pkgs.ghidra
        ];
    };
}

