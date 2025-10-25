{
    vscprofile,
    config,
    lib,
    pkgs,
    ...
}: {
    programs.vscode.profiles = {
        ${vscprofile} = {
            extensions = with pkgs.vscode-extensions; [
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
    ];
    
    userSettings = {
        "[c]" = {
            "editor.defaultFormatter" = "ms-vscode.cpptools";
        };

        "[cpp]" = {
            "editor.defaultFormatter" = "ms-vscode.cpptools";
        };

        "C_Cpp" = {
            clang_format_fallbackStyle = "LLVM";
            clang_format_sortIncludes = true;

            vcFormat.indent.caseContentsWhenBlock = true;
            formatting = "clangFormat";

            default.includePath = [
                "src/"
                "./src"
                "/src"
                "include/"
                "./include"
                "/include"
            ];
        };
    };};
}