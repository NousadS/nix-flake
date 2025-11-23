{
    config,
    lib,
    pkgs,
    ...
}: {
    dconf.settings = {
        "org/gnome/shell" = {
            favorite-apps = [
                "google-chrome.desktop"
                "code.desktop"
            ];
        };

        # [org/gnome/desktop/background]
        # picture-uri='file:///home/nousad/.local/share/backgrounds/2025-11-23-02-01-06-Linux.jpg'
        # picture-uri-dark='file:///home/nousad/.local/share/backgrounds/2025-11-23-02-01-06-Linux.jpg'
        # background-color='#262626'

        # [org/gnome/desktop/app-folders]
        # folder-children=['Utilities', 'YaST', 'Pardus']

        # [org/gnome/desktop/app-folders/folders/Pardus]
        # categories=['X-Pardus-Apps']
        # name='X-Pardus-Apps.directory'
        # translate=true

        # [org/gnome/desktop/app-folders/folders/Utilities]
        # apps=['org.freedesktop.GnomeAbrt.desktop', 'nm-connection-editor.desktop', 'org.gnome.baobab.desktop', 'org.gnome.Connections.desktop', 'org.gnome.DejaDup.desktop', 'org.gnome.DiskUtility.desktop', 'org.gnome.Evince.desktop', 'org.gnome.FileRoller.desktop', 'org.gnome.font-viewer.desktop', 'org.gnome.Loupe.desktop', 'org.gnome.seahorse.Application.desktop', 'org.gnome.tweaks.desktop', 'org.gnome.Usage.desktop']
        # categories=['X-GNOME-Utilities']
        # name='X-GNOME-Utilities.directory'
        # translate=true

        # [org/gnome/desktop/app-folders/folders/YaST]
        # categories=['X-SuSE-YaST']
        # name='suse-yast.directory'
        # translate=true
    };
}
