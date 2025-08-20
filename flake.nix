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
        lib = nixpkgs.lib;
    in {
        nixosConfigurations = {
            nousad = nixpkgs.lib.nixosSystem {
                inherit system;

                modules = [
                    ./modules

                    stylix.nixosModules.stylix

                    ./hosts/nousad
                    home-manager.nixosModules.home-manager {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;

                        home-manager.backupFileExtension = "backup";

                        home-manager.extraSpecialArgs = { inherit stylix; };

                        home-manager.users.nousad = import ./homes/nousad;
                    }
                ];
            };
        };
    };
}
