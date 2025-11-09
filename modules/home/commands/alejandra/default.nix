{ config, lib, pkgs, mkModule, ... } @ args:

mkModule {  
    home.file.".config/alejandra/config.toml".text = ''indentation = "FourSpaces"'';

    home.file.".config/alejandra/ealejandra.sh" = {
        text = ''
            #!/usr/bin/env bash
            alejandra --experimental-config ~/.config/alejandra/config.toml
        '';
        executable = true;
    };

    home.file.".local/bin/ealejandra".source = config.home.homeDirectory + "/.config/alejandra/ealejandra.sh";
}