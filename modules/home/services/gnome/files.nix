{
    config,
    lib,
    pkgs,
    self,
    ...
}: {
    home.file.".local/share/applications/".source = self + "/assets/gnome/applications/";
}
