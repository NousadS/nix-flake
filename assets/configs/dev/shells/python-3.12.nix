{
    description = "Python 3.12 nix-shell";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    };

    outputs = { self, nixpkgs, ... }:
    let
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
        lib = pkgs.lib;
    in {
        devShells.${system}.default = pkgs.mkShell {
            packages = [
                pkgs.zsh

                (pkgs.python312.withPackages(pypkgs: [
                    pypkgs.PACKAGE
                ]))
            ];

            shell = pkgs.zsh;

            shellHook = ''
                echo "Welcome to Python 3.12 dev shell!"
            '';
        };
    };
}
