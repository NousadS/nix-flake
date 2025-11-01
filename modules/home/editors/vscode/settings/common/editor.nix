{ config, lib, pkgs, ... }:

{
    userSettings.editor = {
        selectionClipboard = false;
        autoClosingDelete = "never";
        formatOnSave = true;
        linkedEditing = true;
        gotoLocation.multipleDefinitions = "goto";
        stickyScroll.enabled = false;
        rulers = [ 88 ];
    };
}