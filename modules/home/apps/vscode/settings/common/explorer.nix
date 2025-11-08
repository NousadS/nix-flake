{ config, lib, pkgs, ... }:

{
    userSettings.explorer = {
        confirmDragAndDrop = false;
        confirmDelete = true;
        compactFolders = false;
        confirmPasteNative = false;
    };
}