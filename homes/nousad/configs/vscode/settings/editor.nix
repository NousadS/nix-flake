{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        editor = {
            # Cursor

            cursorBlinking = "expand";
            cursorSmoothCaretAnimation = "on";
            cursorStyle = "line-thin";

            # Font

            fontFamily = "'Fira Code'";
            fontSize = 14;
            fontLigatures = true;

            # Other

            selectionClipboard = false;
            autoClosingDelete = "never";
            formatOnSave = true;
            linkedEditing = true;
            gotoLocation.multipleDefinitions = "goto";
            stickyScroll.enabled = false;
            rulers = [ 88 ];
        };
    };
}