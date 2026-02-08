{ nixpkgs, pkgs, lib, inputs, system, self }:

host: nixpkgs.lib.nixosSystem {
    inherit system; # Also imports nixpkgs
    
    specialArgs = {
        inherit lib inputs system self;
    };
    
    modules = [
        "${self}/modules/host"
        "${self}/hosts/${host}"
    ];
}