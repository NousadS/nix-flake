{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        explorer = {
            confirmDragAndDrop = false;
            confirmDelete = true;
            compactFolders = false;
            confirmPasteNative = false;
        };
    };
}