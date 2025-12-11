{
    config,
    lib,
    pkgs,
    mkModule,
    self,
    ...
} @ args:
mkModule {
    # todo: make this NOT hardcoded
    imports = [
        ./devices/logitec-pop-keys
    ];
}
