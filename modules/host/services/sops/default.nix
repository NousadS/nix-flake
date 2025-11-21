{
    config,
    lib,
    pkgs,
    inputs,
    self,
    mkModule,
    ...
} @ args:
mkModule {
    imports = [
        inputs.sops-nix.nixosModules.sops
    ];

    sops = {
        defaultSopsFile = (self + "/secrets/secrets.yaml");
        defaultSopsFormat = "yaml";

        age.keyFile = (self + "/secrets/keys.txt");

        secrets = {
            # nousadUserPassword = {};
        };
    };
}
