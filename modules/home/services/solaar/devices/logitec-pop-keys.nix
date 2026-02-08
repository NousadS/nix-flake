
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
