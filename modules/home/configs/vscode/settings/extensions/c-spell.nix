{ config, lib, pkgs, ... }:

{
    programs.vscode.userSettings = {
        cSpell = {
            language = "en,ru";

            userWords = [
                "aiogram"
                "Atbash"
                "blit"
                "Dantic"
                "dotenv"
                "endmacro"
                "fastapi"
                "Fira"
                "getpixe"
                "nousad"
                "resb"
                "SRCALPHA"
                "Starlette"
                "templating"
                "uvicorn"
                "Weighable"
                "пентен"
                "юникодом"
            ];
        };
    };
}