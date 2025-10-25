{ config, lib, pkgs, ... } @ args:

let
    current = ./.;

    hasDefaultNix = dir: builtins.pathExists (dir + "/default.nix");

    groups = builtins.filter
        (name: let 
            d = (builtins.readDir current).${name};
            in d == "directory")
        (builtins.attrNames (builtins.readDir current));

    dynamicModules = builtins.concatMap (group: let
        groupPath = "${current}/${group}";
        groupDir = builtins.readDir groupPath;
        moduleNames = builtins.filter (n:
            groupDir.${n} == "directory" &&
            hasDefaultNix (groupPath + "/" + n)
        ) (builtins.attrNames groupDir);
    in
        map (name: builtins.trace "Importing ${group}/${name} as a host module." 
            (import "${groupPath}/${name}" (args // {
                mkModule = (import ./mkHostModule.nix { inherit group name; });
            }))
        ) moduleNames
    ) groups;
in {
    imports = dynamicModules ++ [
        ./fallback.nix
    ];
}
