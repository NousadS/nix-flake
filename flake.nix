{
    description = "Nousad's flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

        home-manager.url = "github:nix-community/home-manager/release-25.11";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";

        sops-nix.url = "github:Mic92/sops-nix";
        sops-nix.inputs.nixpkgs.follows = "nixpkgs";

        stylix.url = "github:nix-community/stylix/release-25.11";
        stylix.inputs.nixpkgs.follows = "nixpkgs";

        solaar.url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.2";
        solaar.inputs.nixpkgs.follows = "nixpkgs";

        alejandra.url = "github:kamadorueda/alejandra/4.0.0";
        alejandra.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = {
        self,
        nixpkgs,
        ...
    } @ inputs: let
        system = "x86_64-linux";

        pkgs = nixpkgs;
        lib = pkgs.lib;
    in {
        nixosConfigurations = {
            laptop = nixpkgs.lib.nixosSystem {
                inherit system;

                specialArgs = {
                    inherit self inputs system;
                };

                modules = [
                    ./hosts/laptop
                ];
            };
        };
    };
}
