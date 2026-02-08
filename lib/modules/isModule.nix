{path, name}: 
(builtins.readDir path).${name} == "directory" && 
builtins.pathExists (path + "/${name}/default.nix")