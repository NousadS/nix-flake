{ config, lib, pkgs, stylix, ... }:

let
    mkModule = import ./mkModule.nix;
    
    modules = builtins.concatLists 
        (map
            (group:
                let
                    dir = builtins.readDir "./${group}";
                    modules = builtins.filter
                        (d: dir.${d} == "directory")
                        (builtins.attrNames dir);
                in
                    map (n: "./${group}/${n}") modules
            )
            (
                let 
                    groups = builtins.readDir ./;
                in 
                    builtins.filter
                        (g: groups.${g} == "directory")
                        (builtins.attrNames groups)
            )
        );
in {
    imports = map (path: import path { inherit lib pkgs mkModule stylix; }) modules;
}
