{ group, name }:

{ ... } @ args:

{ config, lib, pkgs, ... }:

let
    cfg = config.modules.host.${group}.${name};

    body = lib.attrsets.removeAttrs args ["options" "imports"];
in {
    options = (args.options or {}) // {
        modules.host.${group}.${name}.enable = lib.mkOption {
            default = true;
            description = "enable ${name}";
            type = lib.types.bool;
        };
    };

    imports = (args.imports or []);

    config = lib.mkIf (cfg.enable or true) body;
}
