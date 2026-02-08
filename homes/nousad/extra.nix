{
    config,
    lib,
    pkgs,
    ...
}: {
    users.users.nousad = {
        isNormalUser = true;
        extraGroups = [
            "networkmanager"
            "wheel"
            "input"
            "scanner"
            "lp"
        ];
    };
}
