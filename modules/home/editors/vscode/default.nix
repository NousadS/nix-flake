{ config, lib, pkgs, mkModule, self, stylix, ... } @ args:

mkModule {  
    imports = [
        ./profiles/default.nix
    ];
    
    programs.vscode.enable = true;
    programs.vscode.package = pkgs.vscode;

    stylix.targets.vscode.enable = true;

    programs.vscode.mutableExtensionsDir = true;

    programs.vscode.profiles.default = {
        enableUpdateCheck = false;
        enableExtensionUpdateCheck = false;
    };
}

