{
    description = "Nousad's flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

        home-manager.url = "github:nix-community/home-manager/release-25.05";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";

        stylix.url = "github:nix-community/stylix/release-25.05";
        stylix.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, home-manager, stylix, ... } @ inputs:
    let
        system = "x86_64-linux";
        pkgs = nixpkgs;
        lib = pkgs.lib;
    in {
        nixosConfigurations = {
            nousad = nixpkgs.lib.nixosSystem {
                inherit system;

                specialArgs = { inherit inputs; };

                modules = [
                    ./hosts/nousad

                    stylix.nixosModules.stylix
                    home-manager.nixosModules.home-manager
                ];
            };
        };
    };
}
