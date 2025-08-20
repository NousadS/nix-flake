{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        license = {
            author = "Nousad <nousad.cat@gmail.com>";
            default = "MIT";
        };
    };
}