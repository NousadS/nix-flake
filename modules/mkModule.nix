{ category, group, name }:

{ ... } @ args:

{ config, lib, pkgs, ... }:

let
    opt = (args.options or {}) // {
        modules.${category}.${group}.${name}.enable = lib.mkOption {
            default = true;
            description = "enable ${name}";
            type = lib.types.bool;
        };
    };

    imp = args.imports or [];

    cfg = lib.attrsets.removeAttrs args ["options" "imports"];

    trace = _: builtins.trace "Enabled ${group}.${name} as a ${category} module." _;
    enabled = config.modules.${category}.${group}.${name}.enable;
in {
    options = opt;
    imports = imp;
    config = lib.mkIf enabled (trace cfg);
}
