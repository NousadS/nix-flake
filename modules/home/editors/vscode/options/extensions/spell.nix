{
  config,
  lib,
  pkgs,
  ...
}@args:
{
  programs.vscode.profiles.default = {
    extensions = 
      with pkgs.vscode-extensions;
      [
        streetsidesoftware.code-spell-checker
      ]
      ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [

        {
          publisher = "streetsidesoftware";
          name = "code-spell-checker-russian";
          version = "2.2.4";
          sha256 = "sha256-Vn/Vu502A9qPVHfnJ3CZUXcM2knIIG6bJHce0r72Rv0=";
        }
        {
          publisher = "streetsidesoftware";
          name = "code-spell-checker-german";
          version = "2.3.4";
          sha256 = "sha256-zc0cv4AOswvYcC4xJOq2JEPMQ5qTj9Dad5HhxtNETEs=";
        }
        {
          publisher = "streetsidesoftware";
          name = "code-spell-checker-latin";
          version = "1.0.5";
          sha256 = "sha256-jaZWOhlRCsX2WEfP/nFwH56+8xOwKYs66JA9XuC8S3o=";
        }
        {
          publisher = "streetsidesoftware";
          name = "code-spell-checker-ancient-greek";
          version = "1.0.5";
          sha256 = "sha256-nDNRtVJefBFwxvPC3U1p9m93stoy8TfcdFNXl5+aUXA=";
        }
      ];

    userSettings = {

      cSpell = {
        language = "en,ru";
        diagnosticLevel = "hint";

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
  };
}
