{ config, lib, pkgs, mkModule, self, stylix, ... } @ args:

mkModule {  
    imports = [
        ./profiles/default.nix
        ./profiles/minecraft-datapacks.nix
        ./profiles/nix.nix
        ./profiles/python.nix
        ./profiles/svelte.nix
        ./profiles/web.nix
    ];
    
    programs.vscode.enable = true;
    programs.vscode.package = pkgs.vscode;
    programs.vscode.mutableExtensionsDir = true;

    stylix.targets.vscode.enable = true;
}

