{
    description = "Nousad's flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";

        home-manager.url = "github:nix-community/home-manager/release-25.11";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";

        stylix.url = "github:nix-community/stylix/release-25.11";
        stylix.inputs.nixpkgs.follows = "nixpkgs";

        solaar.url = "https://flakehub.com/f/Svenum/Solaar-Flake/0.1.2";
        solaar.inputs.nixpkgs.follows = "nixpkgs";

        niri.url = "github:sodiboo/niri-flake";
        niri.inputs.nixpkgs.follows = "nixpkgs";

        noctalia.url = "github:noctalia-dev/noctalia-shell";
        noctalia.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = {
        self,
        nixpkgs,
        ...
    } @ inputs: let
        system = "x86_64-linux";

        pkgs = nixpkgs;
        lib = nixpkgs.lib;

        mkHost = import ./lib/configurations/mkHost.nix {
        inherit nixpkgs pkgs lib inputs system self;
    };
    in {
        nixosConfigurations = {
            laptop = mkHost "laptop";
        };
    };
}
