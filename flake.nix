{
    description = "Nousad's flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";

        home-manager.url = "github:nix-community/home-manager/release-25.05";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";

        stylix.url = "github:nix-community/stylix/release-25.05";
        stylix.inputs.nixpkgs.follows = "nixpkgs";

        nix4nvchad.url = "github:nix-community/nix4nvchad";
        nix4nvchad.inputs.nixpkgs.follows = "nixpkgs";

        solaar.url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.2";
        solaar.inputs.nixpkgs.follows = "nixpkgs";

        alejandra.url = "github:kamadorueda/alejandra/4.0.0";
        alejandra.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { self, nixpkgs, ... } @ inputs:
    let
        system = "x86_64-linux";

        pkgs = nixpkgs;
        lib = pkgs.lib;
    in {
        nixosConfigurations = {
            laptop = nixpkgs.lib.nixosSystem {
                inherit system;

                specialArgs = { inherit self inputs system; };

                modules = [
                    ./hosts/laptop

                    inputs.home-manager.nixosModules.home-manager
                    inputs.stylix.nixosModules.stylix
                    inputs.solaar.nixosModules.default
                ];
            };
        };
    };
}
