{
    config,
    lib,
    pkgs,
    system,
    mkModule,
    ...
} @ args:
mkModule {
    home.file.".config/alejandra/config.toml".text = ''indentation = "FourSpaces"'';

    home.file.".local/bin/ealejandra" = {
        text = ''
            #!/usr/bin/env bash
            alejandra --experimental-config ~/.config/alejandra/config.toml
        '';
        executable = true;
    };
}
