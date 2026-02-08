{
    config,
    lib,
    pkgs,
    path,
    category,
    ...
} @ args: let
    dir = builtins.readDir path;

    isGroup = g: dir.${g} == "directory";
    mkGroup = g: let
        groupPath = path + "/${g}";
        groupDir = builtins.readDir groupPath;

        isModule = m: groupDir.${m} == "directory" && builtins.pathExists (groupPath + "/${m}/default.nix");
        mkModule = m:
            import "${groupPath}/${m}" (args
            // {
                mkModule = import ./mkModule.nix {
                    category = category;
                    group = g;
                    name = m;
                };
            });

        modules = map mkModule (builtins.filter isModule (builtins.attrNames groupDir));
    in
        modules;

    groups = builtins.concatMap mkGroup (builtins.filter isGroup (builtins.attrNames dir));
in
    groups
