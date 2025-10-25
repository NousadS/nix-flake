{ config, lib, pkgs, ... } @ args:

{
    programs.vscode.profiles = {
        "${args.profile}" = lib.attrsets.removeAttrs args ["profile"];
    };
}