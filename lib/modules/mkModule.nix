args: {path, 
    category,
    group,
    name,}:
import "${path}/${name}" (args
// {
    mkModule = body: {
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
                // (body.options or {});
        };

        imp = body.imports or [];

        cfg = config.modules.${category}.${group}.${name};

        bdy =
            lib.attrsets.removeAttrs body ["options" "imports"]
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
    };
})