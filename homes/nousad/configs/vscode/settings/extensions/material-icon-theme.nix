{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        material-icon-theme = {
            folders = {
                theme = "specific";
                color = "#616161";
                customClones = [
                    {
                        "name" = "sudo";
                        "base" = "command";
                        "color" = "green-500";
                        "lightColor" = "green-700";
                        "folderNames" = [ "sudo" ];
                    }
                    {
                        "name" = "lexer";
                        "base" = "src";
                        "color" = "green-500";
                        "lightColor" = "green-700";
                        "folderNames" = [ "lexer" ];
                    }
                    {
                        "name" = "grouper";
                        "base" = "element";
                        "color" = "red-500";
                        "lightColor" = "red-700";
                        "folderNames" = [ "grouper" ];
                    }
                    {
                        "name" = "parser";
                        "base" = "api";
                        "color" = "light-blue-500";
                        "lightColor" = "light-blue-700";
                        "folderNames" = [ "parser" ];
                    }
                    {
                        "name" = "compiler";
                        "base" = "core";
                        "color" = "orange-500";
                        "lightColor" = "orange-700";
                        "folderNames" = [ compiler" ];
                    }
                    {
                        "name" = "dreambeard";
                        "base" = "linux";
                        "color" = "gray-900";
                        "lightColor" = "gray-700";
                        "folderNames" = [
                            "dreambeard"
                            "dreambeard-cpp"
                            "dreambeard-js"
                            "dreamberd"
                        ];
                    }
                    {
                        "name" = "user";
                        "base" = "admin";
                        "color" = "blue-700";
                        "lightColor" = "blue-700";
                        "folderNames" = [ "user" "users" ];
                    }
                    {
                        "name" = "labler";
                        "base" = "routes";
                        "color" = "blue-700";
                        "lightColor" = "blue-700";
                        "folderNames" = [ "labeler" "labelers" ];
                    }
                    {
                        "name" = "check";
                        "base" = "resolver";
                        "color" = "green-500";
                        "lightColor" = "green-500";
                        "folderNames" = [
                            "check"
                            "checks"
                            "checker"
                            "checkers"
                        ];
                    }
                    {
                        "name" = "ids";
                        "base" = "enum";
                        "color" = "green-500";
                        "lightColor" = "green-500";
                        "folderNames" = [ "id" "ids" ];
                    }
                    {
                        "name" = "tables";
                        "base" = "database";
                        "color" = "green-500";
                        "lightColor" = "green-500";
                        "folderNames" = [ "table" "tables" ];
                    }
                    {
                        "name" = "storage";
                        "base" = "database";
                        "color" = "green-500";
                        "lightColor" = "green-500";
                        "folderNames" = [ "storage" ];
                    }
                ];
            };
        };
    };
}