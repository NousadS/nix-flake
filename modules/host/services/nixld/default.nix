{
  config,
  pkgs,
  ...
}:
{
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = [
    pkgs.stdenv.cc.cc
    pkgs.zlib
    pkgs.fuse3
    pkgs.icu
    pkgs.nss
    pkgs.openssl
    pkgs.curl
    pkgs.expat
  ];
}
