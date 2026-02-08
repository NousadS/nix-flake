{ pkgs, lib, inputs, system, self, ... } @ args:

name: {
    imports = [
        "${self}/homes/${name}/extra.nix"
    ];

    home-manager.users.nousad = {
        imports = [
            "${self}/modules/home"
            "${self}/homes/${name}"
        ];
    };
}