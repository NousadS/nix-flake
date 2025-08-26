{ config, lib, pkgs, ... } @ args:

let
    mkHostModule = import ./mkHostModule.nix;

    currentDir = ./.;
    
    modules = builtins.concatLists 
        (map
            (group:
                let
                    dir = builtins.readDir "${currentDir}/${group}";
                    modules = builtins.filter
                        (d: dir.${d} == "directory")
                        (builtins.attrNames dir);
                in
                    map (n: "${currentDir}/${group}/${n}") modules
            )
            (
                let 
                    groups = builtins.readDir "${currentDir}";
                in 
                    builtins.filter
                        (g: groups.${g} == "directory")
                        (builtins.attrNames groups)
            )
        );
in {
    imports = map (path: import path (args // {
        mkModule = mkHostModule;
    })) modules;
}
