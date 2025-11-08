{ config, lib, pkgs, ... }:

{
    userSettings = {
        editor = {
            cursorBlinking = "expand";
            cursorSmoothCaretAnimation = "on";
            cursorStyle = "line-thin";
        };

        terminal.integrated = {
            cursorStyle = "underline";
            cursorStyleInactive = "underline";
        };
    };
}