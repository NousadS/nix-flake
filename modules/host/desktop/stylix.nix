{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  imports = [
    inputs.stylix.nixosModules.stylix
  ];

  stylix.enable = true;

  fonts.packages = [
    pkgs.fira-code
    pkgs.fira-mono
    pkgs.fira-sans
    pkgs.meslo-lgs-nf
    pkgs.noto-fonts-color-emoji
  ];

  fonts.fontconfig.enable = true;

  stylix.fonts = {
    serif = {
      package = pkgs.fira-code;
      name = "Fira Code Regular";
    };

    sansSerif = {
      package = pkgs.fira-code;
      name = "Fira Code Regular";
    };

    monospace = {
      package = pkgs.meslo-lgs-nf;
      name = "MesloLGS NF";
    };

    emoji = {
      package = pkgs.noto-fonts-color-emoji;
      name = "Noto Color Emoji";
    };

    sizes = {
      applications = 11;
      desktop = 11;
      popups = 11;
      terminal = 11;
    };
  };
  stylix.image = self + "/assets/wallpapers/Linuxy.jpg";

  environment.systemPackages = [
    pkgs.papirus-icon-theme
  ];

  stylix.cursor = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 1;
  };

  stylix.icons = {
    enable = true;

    package = pkgs.papirus-icon-theme;
    light = "Papirus-Light";
    dark = "Papirus-Dark";
  };

  stylix.opacity = {
    applications = 1.0;
    desktop = 1.0;
    popups = 1.0;
    terminal = 1.0;
  };

  # Take from walpaper
  # stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-pale.yaml";
  stylix.polarity = "dark";
}
