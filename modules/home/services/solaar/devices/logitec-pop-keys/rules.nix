# WARNING: The yaml formatter cannot handle needed syntax => plain text
# {
#     config,
#     lib,
#     pkgs,
#     self,
#     ...
# } @ args: let
#     fyaml = import (self + "/modules/utils/formatters/yaml.nix") {inherit pkgs;};
#     _ = fyaml "rules.yaml" [
#         {
#             Key = ["Emoji Smiley Heart Eyes" "released"];
#             KeyPress = [
#                 ["Shift_L" "Control_L" "Super_L" "T"]
#                 "click"
#             ];
#         }
#         {
#             Key = ["Emoji Crying Face" "released"];
#             KeyPress = [
#                 ["Shift_L" "Control_L" "Super_L" "E"]
#                 "click"
#             ];
#         }
#         {
#             Key = ["Emoji Smiley" "released"];
#             KeyPress = [
#                 ["Shift_L" "Control_L" "Super_L" "B"]
#                 "click"
#             ];
#         }
#         {
#             Key = ["Emoji Smilie With Tears" "released"];
#             KeyPress = [
#                 ["Shift_L" "Control_L" "Super_L" "G"]
#                 "click"
#             ];
#         }
#         # {
#         #   Key = [ "Open Emoji Panel" "released" ];
#         #   Execute = "code";
#         # }
#     ];
# in {
#     home.file.".config/solaar/rules.yaml".source = _;
# }
{
    config,
    lib,
    pkgs,
    self,
    ...
} @ args: {
    home.file.".config/solaar/rules.yaml".text = ''
        %YAML 1.3
        ---
        - Key: [Emoji Smiley Heart Eyes, released]
        - KeyPress:
          - [Shift_L, Control_L, Super_L, R]
          - click
        ...
        ---
        - Key: [Emoji Crying Face, released]
        - KeyPress:
          - [Shift_L, Control_L, Super_L, V]
          - click..
        ...
        ---
        - Key: [Emoji Smiley, released]
        - KeyPress:
          - [Shift_L, Control_L, Super_L, B]
          - click
        ...
        ---
        - Key: [Emoji Smilie With Tears, released]
        - KeyPress:
          - [Shift_L, Control_L, Super_L, G]
          - click
        ...
        ...
        # ---
        # - Key: [Open Emoji Panel, released]
        # - Execute: code
        # ...
    '';
}
