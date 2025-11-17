{
    config,
    lib,
    pkgs,
    ...
} @ args: let
    fyaml = import (self + "/modules/utils/formatters/yaml.nix") {inherit pkgs;};

    _ = fyaml "rules.yaml" [
        {
            Key = ["Emoji Smiley Heart Eyes" "released"];
            KeyPress = [
                ["Shift_L" "Control_L" "Super_L" "T"]
                "click"
            ];
        }
        {
            Key = ["Emoji Crying Face" "released"];
            KeyPress = [
                ["Shift_L" "Control_L" "Super_L" "E"]
                "click"
            ];
        }
        {
            Key = ["Emoji Smiley" "released"];
            KeyPress = [
                ["Shift_L" "Control_L" "Super_L" "B"]
                "click"
            ];
        }
        {
            Key = ["Emoji Smilie With Tears" "released"];
            KeyPress = [
                ["Shift_L" "Control_L" "Super_L" "G"]
                "click"
            ];
        }

        # {
        #   Key = [ "Open Emoji Panel" "released" ];
        #   Execute = "code";
        # }
    ];
in {
    home.file.".config/solaar/rules.yaml".source = _;
}
