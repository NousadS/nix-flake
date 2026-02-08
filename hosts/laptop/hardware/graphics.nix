{
  config,
  lib,
  pkgs,
  ...
}:
{
  hardware.graphics = {
    enable = true;
    extraPackages = [
      pkgs.intel-media-driver 
      pkgs.intel-vaapi-driver 
      pkgs.vulkan-loader
      pkgs.vulkan-validation-layers
      pkgs.vulkan-extension-layer
    ];
  };
}
