{
    name,
    apps,
    categories ? [],
    translate ? false,
}: let
    id = "X-${name}";
in {
    dconf.settings = {
        "org/gnome/desktop/app-folders/folders/${id}" = {
            apps = map (s: "${s}.desktop") apps;

            inherit name categories translate;
        };
        "org/gnome/desktop/app-folders" = {
            folder-children = [id];
        };
    };
}
