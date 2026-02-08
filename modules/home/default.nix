{
    config,
    lib,
    pkgs,
    self,
    ...
} @ args: {
    imports = import "${self}/lib/modules/mkCategory.nix" (args
    // {
        path = ./.;
        category = "home";
    });
}
