{
    config,
    lib,
    pkgs,
    ...
}: {
    extensions = with pkgs.vscode-extensions;
        [
            redhat.java
            vscjava.vscode-java-debug
            vscjava.vscode-gradle
        ]
        ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
                publisher = "fwcd";
                name = "kotlin";
                version = "0.2.36";
                sha256 = "sha256-RB5YOp30tfMEzGyXpOwPIHzXqZlRGc+pXiJ3foego7Y=";
            }
            {
                publisher = "cstef";
                name = "kotlin-formatter";
                version = "0.0.9";
                sha256 = "sha256-PbXhOsoR0/5wXuFrzwCcauM1uGgfQoSRTj0gPVVZ4Kg=";
            }
        ];
}
