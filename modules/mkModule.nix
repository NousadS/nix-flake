{
    category,
    group,
    name,
}: {...} @ args: {
    config,
    lib,
    pkgs,
    ...
}: let
    opt = {
        modules.${category}.${group}.${name} =
            {
                enable = lib.mkOption {
                    default = true;
                    description = "enable ${name}";
                    type = lib.types.bool;
                };
            }
            // (args.options or {});
    };

    imp = args.imports or [];

    cfg = config.modules.${category}.${group}.${name};

    bdy =
        lib.attrsets.removeAttrs args ["options" "imports"]
        // {
            _module.args = {
                inherit cfg;
            };
        };

    trace = _: builtins.trace "Enabled ${group}.${name} as a ${category} module." _;
in {
    options = opt;
    imports = imp;
    config = lib.mkIf config.modules.${category}.${group}.${name}.enable (trace bdy);
}
